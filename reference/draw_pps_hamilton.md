# Draw a Sample of Households Proportional to Village Size

This function selects a stratified random sample of individual household
rows from within counties. The probability of a household being selected
is proportional to the total size (household count) of the village it
belongs to, using the Hamilton (largest remainder) method for
allocation. After initial allocation, any village falling below
`min_village_sample` has its allocation lifted to the minimum by
borrowing units from the most oversampled donor villages within the same
county.

## Usage

``` r
draw_pps_hamilton(
  data,
  county_var = "county",
  village_id_var = "village",
  allocation_df,
  alloc_size_var = "sample",
  seed = as.numeric(Sys.Date()),
  min_village_sample = 8L
)
```

## Arguments

- data:

  A data frame containing raw household-level records.

- county_var:

  A bare or quoted column name identifying the county stratum.

- village_id_var:

  A bare or quoted column name identifying the unique village.

- allocation_df:

  A data frame containing two columns: the county identifier and the
  allocated household sample size for that county.

- alloc_size_var:

  A bare or quoted column name in `allocation_df` indicating the target
  sample size for each county.

- seed:

  An integer used to initialise the pseudo-random number generator for
  reproducible sampling. Defaults to the numeric representation of the
  current system date.

- min_village_sample:

  A single integer specifying the minimum number of households that must
  be sampled from any village. Villages initially allocated fewer than
  this value borrow units from the most oversampled villages in the same
  county. The effective minimum is capped at the village's actual
  household count, so small villages are never over-sampled. Defaults to
  `8L`.

## Value

A data frame with the same columns as `data`, containing only the
selected household rows. Villages with a final allocation of zero are
excluded from the output entirely.

## Details

**Allocation (step 1 — Hamilton / largest remainder):** For each county,
each village receives a proportional raw allocation \\n_v = N\_{county}
\times (s_v / S\_{county})\\, where \\s_v\\ is the village household
count and \\S\_{county}\\ is the county total. Allocations are floored
and fractional remainders are distributed one unit at a time to the
villages with the largest fractional parts until the county target is
met.

**Redistribution (step 2 — minimum floor):** Redistribution is performed
independently within each county. Donor villages — those whose
allocation exceeds their own effective minimum — are sorted in
descending order of surplus and drained greedily until the total deficit
of sub-minimum villages is recovered or the donor pool is exhausted. A
[`warning`](https://rdrr.io/r/base/warning.html) is issued when a county
cannot fully satisfy the minimum for all its villages.

**Sampling (step 3):** Within each village, households are drawn via
simple random sampling without replacement using random uniform
ordering. Villages with a final allocation of zero are silently dropped.

## See also

[`slice_sample`](https://dplyr.tidyverse.org/reference/slice.html),
[`group_modify`](https://dplyr.tidyverse.org/reference/group_map.html)

## Examples

``` r
if (FALSE) { # \dontrun{
# dummy raw household data
raw_households <- data.frame(
  county_id  = rep(c("County_A", "County_B"), each = 10),
  village_id = c(rep("V1", 3), rep("V2", 7), rep("V3", 4), rep("V4", 6)),
  household_id = paste0("HH_", 1:20)
)

# household sample size targets per county
target_allocations <- data.frame(
  county_id   = c("County_A", "County_B"),
  sample_size = c(20, 25)
)

# run reproducible PPS household sampling with an 8-household village minimum
pps_household_sample <- draw_pps_sample(
  data               = raw_households,
  county_var         = "county_id",
  village_id_var     = "village_id",
  allocation_df      = target_allocations,
  alloc_size_var     = "sample_size",
  seed               = 123,
  min_village_sample = 8L
)
} # }
```
