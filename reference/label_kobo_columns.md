# replace data column names with question labels from a kobo asset form metadata structure

replace data column names with question labels from a kobo asset form
metadata structure

## Usage

``` r
label_kobo_columns(data, kobo_asset, lang = NULL)
```

## Arguments

- data:

  dataframe containing the downloaded survey submission records

- kobo_asset:

  a labelled list/dataframe compiled from the xlsform or robotoolbox

- lang:

  character optional specific language label column to use if
  multilingual, e.g., 'English (en)'

## Value

dataframe with renamed columns
