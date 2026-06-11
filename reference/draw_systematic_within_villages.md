# Draw a Systematic Sample of Households Within Each Village

This function applies systematic random sampling to households
independently within each village cluster based on specific target
allocations for each village.

## Usage

``` r
draw_systematic_within_villages(
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

  A data frame containing columns for the village identifier and its
  assigned household sample target.

- alloc_size_var:

  The bare or quoted column name in `allocation_df` indicating the
  village-level target sample size.

- seed:

  An integer value used to initialize the pseudo-random number
  generator. Defaults to `42`.

## Value

A data frame containing the systematically selected household rows.
