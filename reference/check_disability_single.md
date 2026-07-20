# validate and recode household disability flags based on repeat group ages in a single dataset

validate and recode household disability flags based on repeat group
ages in a single dataset

## Usage

``` r
check_disability_single(data, disab_col, uuid_col = "uuid", age = 6)
```

## Arguments

- data:

  dataframe containing both household markers and individual repeat rows

- disab_col:

  character matching pattern for the disability column name to validate
  and update

- uuid_col:

  character string of the ID column name (defaults to "uuid")

- age:

  numeric lower age limit

## Value

an updated version of the dataframe with corrected disability flags

## Examples

``` r
# 
# create dummy joined dataset
survey_data <- data.frame(
  uuid = c("hh_1", "hh_1", "hh_2", "hh_2", "hh_3"),
  HHM_disability = c("yes", "yes", "yes", "yes", "no"),
  prot_disability_ind_age = c(1, 35, 2, 1, 40),
  stringsAsFactors = FALSE,
  check.names = FALSE
)

# run the function
output_df <- check_disability_single(survey_data, disab_col = "HHM_disability", uuid_col = "uuid")
#> --- disability check summary ---
#> households with active disability loops: 2
#> households where all disabled members are < 6 (total: 1)
#> action: invalid household flags successfully recoded to 'no'
#> --------------------------------
```
