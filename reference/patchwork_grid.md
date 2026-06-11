# patchwork a list of plots with headers for sections arranged left to right with unified axes labels

patchwork a list of plots with headers for sections arranged left to
right with unified axes labels

## Usage

``` r
patchwork_grid(plot_list, section_headers, plots_per_section = 1, nrow = 1)
```

## Arguments

- plot_list:

  list of ggplot objects

- section_headers:

  character vector of headers to place above sections

- plots_per_section:

  integer number of plots that belong under each header

- nrow:

  integer number of rows for the internal plot grids, defaults to 1

## Value

a patchwork layout object
