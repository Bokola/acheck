# reset disability columns based on age thresholds

reset disability columns based on age thresholds

## Usage

``` r
recode_early_childhood_disability(
  data,
  disability_cols = c("level_seeing_disability", "level_hearing_disability",
    "level_selfcare_disability", "level_remembering_disability",
    "level_walking_disability", "level_communicating_disability"),
  anxiety_freq = "dis_anxiety",
  anxiety_intens = "dis_anxiety_frequency",
  depress_freq = "dis_depression",
  depress_intens = "dis_anxiety_depression",
  age_col = "prot_disability_ind_age"
)
```

## Arguments

- data:

  dataframe containing the disability and age columns

- disability_cols:

  character vector of column names representing the core domains

- anxiety_freq:

  character name of the anxiety frequency column

- anxiety_intens:

  character name of the anxiety intensity column

- depress_freq:

  character name of the depression frequency column

- depress_intens:

  character name of the depression intensity column

- age_col:

  character name of the column storing age values

## Value

a modified dataframe with recoded disability entries for children under
6
