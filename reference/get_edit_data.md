# Read partner registration edit files

Read partner registration edit files

## Usage

``` r
get_edit_data(
  partner = "PGI",
  cols_exclude = c("village", "ben_name"),
  sheet_name = NULL
)
```

## Arguments

- partner:

  character string of partners e.g., "PGI"

- cols_exclude:

  character vector of columns to exclude from edits

- sheet_name:

  character vector of workbook sheet name

## Value

dataframe

## Examples

``` r
if (FALSE) get_edit_data() # \dontrun{}
```
