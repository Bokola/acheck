# visualize parts to whole using an automated faceted donut grid via patchwork

visualize parts to whole using an automated faceted donut grid via
patchwork

## Usage

``` r
plot_faceted_donuts(
  data,
  fill_col,
  facet_col,
  palette = c("#388E3C", "#F57C00", "#D32F2F")
)
```

## Arguments

- data:

  dataframe

- fill_col:

  character the categorical variable to slice

- facet_col:

  character the variable to split panels by

- palette:

  character vector hex color values mapping to categories

## Value

a patchwork grid assembly of donut plots

## Examples

``` r
if (FALSE) plot_faceted_donuts() # \dontrun{}
```
