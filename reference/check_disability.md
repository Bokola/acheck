# validate and recode household disability flags based on repeat group ages

validate and recode household disability flags based on repeat group
ages

## Usage

``` r
check_disability(df_out, df_disab, uuid_col = "uuid")
```

## Arguments

- df_out:

  dataframe containing the main household data

- df_disab:

  dataframe containing the individual repeat group data

- uuid_col:

  character string of the ID column name in df_out (defaults to "uuid")

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
  `_uuid` = c("hh_1", "hh_1", "hh_2", "hh_2", "hh_3"),
  HHM_disability = c("yes", "no", "yes", "yes", "no"),
  prot_disability_ind_age = c(1, 35, 2, 1, 40),
  stringsAsFactors = FALSE,
  check.names = FALSE
)

# run the function
output_df <- check_disability(main_df, repeat_df, uuid_col = "uuid")
#> --- disability check summary ---
#> households with active disability loops: 2
#> households where all disabled members are <= 2: 2
#> action: invalid household flags successfully recoded to 'no'
#> --------------------------------
```
