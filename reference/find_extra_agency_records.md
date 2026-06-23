# find unique extra records in a matched dataset missing from the reference payroll

find unique extra records in a matched dataset missing from the
reference payroll

## Usage

``` r
find_extra_agency_records(
  matched_df = df_matched,
  payroll_df = d_pay_out,
  target_agency = "ALDEF",
  matched_agency_col = "enum_egency",
  payroll_agency_col = "partner"
)
```

## Arguments

- matched_df:

  dataframe containing the processed matched records (e.g., df_matched)

- payroll_df:

  dataframe containing the raw reference payroll records (e.g.,
  d_pay_out)

- target_agency:

  character string identifying the specific agency group to audit

- matched_agency_col:

  character name of the agency column in matched_df

- payroll_agency_col:

  character name of the agency column in payroll_df

## Value

a filtered dataframe containing the rogue records present only in
matched_df
