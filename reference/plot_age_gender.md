# plot age distribution faceted by gender using patchwork

plot age distribution faceted by gender using patchwork

## Usage

``` r
plot_age_gender(data, age_group_col, gender_col, fill_col = "grey60")
```

## Arguments

- data:

  dataframe containing household level records

- age_group_col:

  character name of the column containing age categories

- gender_col:

  character name of the gender column

- fill_col:

  hex code or color string for the bar fills

## Value

a patchwork layout object
