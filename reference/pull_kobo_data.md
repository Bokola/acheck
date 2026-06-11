# pull data from kobo API

pull data from kobo API

## Usage

``` r
pull_kobo_data(
  url = Sys.getenv("kobo_url"),
  project_id = Sys.getenv("unocha_id"),
  token = Sys.getenv("unocha_token")
)
```

## Arguments

- url:

  character. Kobotoolbox url

- project_id:

  character. project id

- token:

  character. project token

## Value

a list

## Examples

``` r
if (FALSE) pull_kobo_data() # \dontrun{}
```
