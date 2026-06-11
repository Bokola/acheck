# Draw a Stratified Simple Random Sample of Households

This function selects a stratified simple random sample of individual
household rows from within counties. Every household within a given
county has an equal probability of selection, independent of village
size.

## Usage

``` r
draw_strs_sample(
  data,
  county_var = "county",
  allocation_df,
  alloc_size_var = "sample",
  seed = as.numeric(Sys.Date())
)
```

## Arguments

- data:

  A data frame containing raw household-level records.

- county_var:

  The bare or quoted column name identifying the county stratum.

- allocation_df:

  A data frame containing two columns: the county identifier and the
  allocated household sample size for that county.

- alloc_size_var:

  The bare or quoted column name in `allocation_df` indicating the
  target sample size.

- seed:

  An integer value used to initialize the pseudo-random number generator
  for reproducible sampling. Defaults to `42`.

## Value

A data frame containing the individually selected household rows.

## Examples

``` r
if (FALSE) { # \dontrun{
# dummy raw household data
raw_households <- data.frame(
  county_id = rep(c("County_A", "County_B"), each = 10),
  village_id = c(rep("V1", 3), rep("V2", 7), rep("V3", 4), rep("V4", 6)),
  household_id = paste0("HH_", 1:20)
)

# household sample size targets per county
target_allocations <- data.frame(
  county_id = c("County_A", "County_B"),
  sample_size = c(2, 3)
)

# run reproducible stratified simple random sampling
strs_sample <- draw_strs_sample(
  data = raw_households,
  county_var = "county_id",
  allocation_df = target_allocations,
  alloc_size_var = "sample_size",
  seed = 123
)
} # }
```
