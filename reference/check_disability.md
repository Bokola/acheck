# validate and recode household disability flags based on repeat group ages

validate and recode household disability flags based on repeat group
ages

## Usage

``` r
check_disability(
  df_out,
  df_disab,
  disab_col = "HHM_disability",
  uuid_col = "uuid",
  age = 6
)
```

## Arguments

- df_out:

  dataframe containing the main household data

- df_disab:

  dataframe containing the individual repeat group data

- disab_col:

  character matching pattern for the disability column. defaults to
  "HHM_disability"

- uuid_col:

  character string of the ID column name in df_out (defaults to "uuid")

- age:

  numeric lower age limit

## Value

an updated version of df_out with corrected disability flags

## Examples

``` r
# lower case comments without dots or dashes
# create dummy main dataset
main_df <- data.frame(
  uuid = c("hh_1", "hh_2", "hh_3"),
  HHM_disability = c("yes", "yes", "no"),
  stringsAsFactors = FALSE
)

# create dummy repeat group dataset
repeat_df <- data.frame(
  `uuid` = c("hh_1", "hh_1", "hh_2", "hh_2", "hh_3"),
  HHM_disability = c("yes", "no", "yes", "yes", "no"),
  prot_disability_ind_age = c(1, 35, 2, 1, 40),
  stringsAsFactors = FALSE,
  check.names = FALSE
)

# run the function
output_df <- check_disability(main_df, repeat_df, disab_col = "HHM_disability", uuid_col = "uuid")
#> --- disability check summary ---
#> households with active disability loops: 2
#> households where all disabled members are < 6 (total: 2)
#> action: invalid household flags successfully recoded to 'no'
#> --------------------------------
```
