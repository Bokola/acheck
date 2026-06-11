# filter and deduplicate beneficiary logs by agency partner

filter and deduplicate beneficiary logs by agency partner

## Usage

``` r
get_partner_beneficiaries(
  df = df_out,
  partner = "pgi",
  columns = c("ben_name", "ben_id_number")
)
```

## Arguments

- df:

  dataframe containing master registry logs

- partner:

  character keyword used to identify the target agency, defaults to
  'pgi'

- columns:

  character vector of column names to distinct by, defaults to
  c('ben_name', 'ben_id_number')

## Value

a deduplicated dataframe containing partner specific records
