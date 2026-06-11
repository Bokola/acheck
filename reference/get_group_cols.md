# Extract column names from a data dictionary based on structural boundaries

Extract column names from a data dictionary based on structural
boundaries

## Usage

``` r
get_group_cols(
  dict,
  vulnerability_df,
  vulnerability_class = "physio",
  name_col = "name"
)
```

## Arguments

- dict:

  dataframe representing the data dictionary

- vulnerability_df:

  a dataframe with vulnerability categories

- vulnerability_class:

  character vector of vulnerability class

- name_col:

  string. The column containing the variable names to extract

## Value

a character vector of column names
