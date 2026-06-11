# Read Excel sheets or an entire workbook into a list or data frame with clean names

Iterates through available worksheets within an Excel file or targets a
specific sheet, extracts content while skipping a designated number of
rows, and standardizes column names using snake_case. If the target
evaluation resolves to exactly one worksheet, it automatically drops the
list format and returns a single data frame directly.

## Usage

``` r
read_workbook(
  path,
  bind_rows = FALSE,
  id = "sheet_name",
  skip = 0,
  sheet_name = NULL
)
```

## Arguments

- path:

  Character string representing the path to the Excel file.

- bind_rows:

  Logical indicator. If TRUE, binds multiple extracted sheets into a
  single unified data frame using a compiler identifier column. Defaults
  to FALSE.

- id:

  Character string naming the optional identifier column that tracks the
  source sheet name when `bind_rows` is TRUE. Defaults to "sheet_name".

- skip:

  Integer specifying the number of rows to skip at the start of reading.
  Defaults to 0.

- sheet_name:

  Character string specifying a single sheet to read. If NULL, all
  sheets are processed. Defaults to NULL.

## Value

A single data frame if only one sheet is processed or
`bind_rows = TRUE`. Otherwise, a named list of data frames representing
individual sheets.

## Examples

``` r
if (FALSE) { # \dontrun{
# read a specific sheet and skip the first 2 rows
df_raw <- read_workbook("survey_data.xlsx", sheet_name = "Main_Data", skip = 2)
} # }
```
