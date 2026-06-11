# get duplicate beneficiaries on select variables

get duplicate beneficiaries on select variables

## Usage

``` r
get_duplicates(
  x,
  vars_to_check = c("benef_name", "ben_number"),
  phone_var = "ben_number",
  name_var = "benef_name"
)
```

## Arguments

- x:

  dataframe

- vars_to_check:

  character vector of variables to check

- phone_var:

  character vector. phone number variable for hard check

- name_var:

  character vector. name of respondent

## Value

dataframe

## Examples

``` r
if (FALSE) get_duplicates() # \dontrun{}
```
