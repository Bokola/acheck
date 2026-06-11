# save a list of active plots into a grid using the png device

save a list of active plots into a grid using the png device

## Usage

``` r
save_plots_to_png(
  plot_list,
  output_path,
  ncol = 2,
  width = 1600,
  height = 1200,
  res = 144
)
```

## Arguments

- plot_list:

  list of ggplot or grid objects

- output_path:

  character path where the combined grid will be saved

- ncol:

  integer number of columns in the grid

- width:

  integer width of output image in pixels

- height:

  integer height of output image in pixels

- res:

  integer nominal resolution in ppi

## Value

invisible null saves file directly to disk
