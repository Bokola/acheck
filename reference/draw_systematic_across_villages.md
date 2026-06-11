# Draw a Systematic Sample of Households Spreading Across Villages

This function selects a systematic random sample of individual household
rows from within counties. By sorting by village first, the systematic
interval automatically spreads the selected sample evenly across the
different villages.

## Usage

``` r
draw_systematic_across_villages(
  data,
  county_var = "county",
  village_id_var = "village",
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

- village_id_var:

  The bare or quoted column name identifying the unique village.

- allocation_df:

  A data frame containing two columns: the county identifier and the
  allocated household sample size for that county.

- alloc_size_var:

  The bare or quoted column name in `allocation_df` indicating the
  target sample size.

- seed:

  An integer value used to initialize the pseudo-random number
  generator. Defaults to `42`.

## Value

A data frame containing the systematically selected household rows.
