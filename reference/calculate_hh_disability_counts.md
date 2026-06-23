# calculate the total number of disabled individuals at the household level

calculate the total number of disabled individuals at the household
level

## Usage

``` r
calculate_hh_disability_counts(
  data,
  hh_id_col = "uuid",
  disability_cols = c("level_seeing_disability", "level_hearing_disability",
    "level_selfcare_disability", "level_remembering_disability",
    "level_walking_disability", "level_communicating_disability")
)
```

## Arguments

- data:

  dataframe containing the individual disability columns and a household
  identifier

- hh_id_col:

  character name of the column storing the unique household id

- disability_cols:

  character vector of column names representing the domains

## Value

an integer vector representing the total disabled household members for
each row
