# plot bar graphs with automatic summary calculations

plot bar graphs with automatic summary calculations

## Usage

``` r
plot_bar(
  data,
  x_var,
  y_var = NULL,
  type = c("count", "proportion", "mean"),
  fill_col = "#0066A1",
  title = "variable distribution",
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
if (FALSE) plot_bar(data, x_var = "job_type", type = "count") # \dontrun{}
```
