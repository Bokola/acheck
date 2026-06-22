# create a survey design object dynamically for any complex sampling design

create a survey design object dynamically for any complex sampling
design

## Usage

``` r
create_survey_object(
  sample_df,
  population_df,
  id_cols,
  strata_cols = NULL,
  weight_col_name = "sampling_weight"
)
```

## Arguments

- sample_df:

  dataframe containing the final selected sample observations

- population_df:

  dataframe containing the full original population sampling frame

- id_cols:

  character vector identifying structural cluster nodes in cascading
  order (e.g., c("village", "hh_id"))

- strata_cols:

  character vector containing names of stratification columns (optional,
  defaults to NULL)

- weight_col_name:

  character string naming the output column for calculated weights

## Value

a configured survey design object
