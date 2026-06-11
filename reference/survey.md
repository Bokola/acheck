# UNOcha survey tool

UNOcha survey tool

## Usage

``` r
survey
```

## Format

A tibble data frame with 17 rows and 2 columns:

- type:

  Character one among select_one select_multiple, integer, text, note,
  etc

- name:

  character. question name

- label:

  character. question label

- hint:

  character. question hint

- calculation:

  character. question calculation equation

- required:

  character. true/false specify if question required

- appearance:

  character. question appearance

- constraint:

  character. question constraint

- relevant:

  character. question relevant (branching logic)

- choice_filter:

  character. question choice filter

- constraint_message:

  character. question constraint message

- repeat_count:

  character. question repeat count

- n:

  character. question row number

## Source

Internal survey
