# calculate total disability counts vector

calculate total disability counts vector

## Usage

``` r
calculate_disability_counts(
  data,
  disability_cols = c("level_seeing_disability", "level_hearing_disability",
    "level_selfcare_disability", "level_remembering_disability",
    "level_walking_disability", "level_communicating_disability")
)
```

## Arguments

- data:

  dataframe containing the disability columns

- disability_cols:

  character vector of column names representing the domains

## Value

an integer vector containing the sum of matching disabilities per row
