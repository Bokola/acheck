# Draw PPS Household Sample

Draw PPS Household Sample

## Usage

``` r
draw_pps_sample(
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

  Household-level data frame.

- county_var:

  County variable name.

- village_id_var:

  Village identifier variable name.

- allocation_df:

  County allocation table.

- alloc_size_var:

  County sample size variable.

- seed:

  Random seed.

## Value

Sampled household data frame.
