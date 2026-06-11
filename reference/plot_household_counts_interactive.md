# plot interactive household count markers using real location pin icons positioned safely inside boundaries

plot interactive household count markers using real location pin icons
positioned safely inside boundaries

## Usage

``` r
plot_household_counts_interactive(
  data,
  lat_col,
  lon_col,
  group_by = "ward",
  compass_pos = "topleft"
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

  character layout position for the north arrow, defaults to 'topleft'

## Value

a leaflet map widget object
