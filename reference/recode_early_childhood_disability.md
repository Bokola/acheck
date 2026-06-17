# reset disability columns based on age thresholds

reset disability columns based on age thresholds

## Usage

``` r
recode_early_childhood_disability(
  data,
  disability_cols = c("level_seeing_disability", "level_hearing_disability",
    "level_selfcare_disability", "level_remembering_disability",
    "level_walking_disability", "level_communicating_disability"),
  age_col = "prot_disability_ind_age"
)
```

## Arguments

- data:

  dataframe containing the disability and age columns

- disability_cols:

  character vector of column names representing the domains

- age_col:

  character name of the column storing age values

## Value

a modified dataframe with recoded disability entries for children under
6
