# Create the target beneficiary verification criteria and indicators summary

Builds a two column matrix pairing each humanitarian vulnerability
criterion alongside its designated operational indicator visually
merging repeating criteria rows and introducing complete outer frame
grids that fully enclose column headers with explicit bold top and
bottom lines

## Usage

``` r
gen_verification_criteria_table(
  df = verification_criteria,
  title = "Vulnerability Criteria"
)
```

## Arguments

- df:

  dataframe of verification criteria

- title:

  character vector of title

## Value

A styled flextable object containing the merged two column layout with
fully enclosed bold grid line formatting

## Examples

``` r
if (FALSE) gen_verification_criteria_table() # \dontrun{}
```
