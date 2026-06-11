# plot bar graphs for top n frequencies

plot bar graphs for top n frequencies

## Usage

``` r
plot_bar_top_n(
  data,
  x_var,
  y_var = NULL,
  type = c("count", "proportion", "mean"),
  n_top = 10,
  fill_col = "#0066A1",
  title = "top variable distribution",
  subtitle = NULL,
  x_lab = NULL,
  y_lab = NULL
)
```

## Arguments

- data:

  dataframe

- x_var:

  character vector x-axis variable

- y_var:

  character vector variable to calculate mean or proportion on

- type:

  character type of calculation: "count", "proportion", or "mean"

- n_top:

  integer maximum number of highest value categories to display

- fill_col:

  character vector of hex color code for fill

- title:

  character vector of title

- subtitle:

  character vector of subtitle

- x_lab:

  character vector of label for x-axis

- y_lab:

  character vector of label for y-axis

## Value

a ggplot object

## Examples

``` r
if (FALSE) plot_bar_top_n(data, x_var = "job_type", type = "count", n_top = 10) # \dontrun{}
```
