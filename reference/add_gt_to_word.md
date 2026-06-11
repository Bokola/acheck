# Add a gtsummary objet to word doc

Add a gtsummary objet to word doc

## Usage

``` r
add_gt_to_word(doc, gt_obj, title, landscape = FALSE)
```

## Arguments

- doc:

  word doc created as
  [`officer::read_docx()`](https://davidgohel.github.io/officer/reference/read_docx.html)

- gt_obj:

  gtsummary object

- title:

  character header

- landscape:

  logical. page orientation

## Value

a word doc

## Examples

``` r
if (FALSE) { # \dontrun{
add_gt_to_word(doc, gt_obj, title, landscape = FALSE)
} # }
```
