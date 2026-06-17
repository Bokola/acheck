# categorize numeric cols

categorize numeric cols

## Usage

``` r
cut_numeric(x, breaks = c(-Inf, 18, Inf), labels = c("<18", ">=18"))
```

## Arguments

- x:

  a vector of numeric column

- breaks:

  numeric vector of breaks

- labels:

  character vector of labels

## Value

vector

## Examples

``` r
cut_numeric(c(1:10), c(-Inf,5, Inf), c("<=5", ">=6"))
#>  [1] <=5 <=5 <=5 <=5 >=6 >=6 >=6 >=6 >=6 >=6
#> Levels: <=5 >=6
```
