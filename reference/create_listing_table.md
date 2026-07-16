# create `gtreg` table listing of data

create `gtreg` table listing of data

## Usage

``` r
create_listing_table(
  data,
  cols = dplyr::everything(),
  labels = list(),
  group_by = NULL
)
```

## Arguments

- data:

  dataframe

- cols:

  columns to include

- labels:

  list. named list or formulas containing column label mappings

- group_by:

  character. grouping variable

## Value

a gtsummary/gtreg listing object

## Examples

``` r
if (FALSE) create_listing_table() # \dontrun{}
```
