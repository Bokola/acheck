# calculate a row level individual disability indicator

calculate a row level individual disability indicator

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

  dataframe containing the individual disability columns

- disability_cols:

  character vector of column names representing the domains

## Value

an integer vector of 1s and 0s indicating if the individual has any
disability
