# plot household aggregation counts using unicode location pins with bold plotmath ggrepel label text callouts

plot household aggregation counts using unicode location pins with bold
plotmath ggrepel label text callouts

## Usage

``` r
plot_household_counts(
  data,
  lat_col,
  lon_col,
  group_by = "ward",
  compass_pos = "bl",
  font_size = 2.8
)
```

## Arguments

- data:

  dataframe containing household level records

- lat_col:

  character name of the latitude column

- lon_col:

  character name of the longitude column

- group_by:

  character administrative grouping scale choice, either 'ward' or
  'county'

- compass_pos:

  character layout position for the north arrow, defaults to 'bl'

- font_size:

  numeric. font size for labels

## Value

a ggplot object
