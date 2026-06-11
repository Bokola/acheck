# Parse and extract household size as an integer vector

This function sanitizes a character vector of household sizes containing
mixed entries (e.g., "5(3F:2M)", "Size 9", "s6"), discarding data entry
noise like phone numbers, registration IDs, or full names.

## Usage

``` r
parse_hhsize(x)
```

## Arguments

- x:

  character. A vector containing raw household size values.

## Value

An integer vector of clean household sizes.

## Examples

``` r
if (FALSE) { # \dontrun{
clean_sizes <- parse_hhsize(df$ben_hhsize)
} # }
```
