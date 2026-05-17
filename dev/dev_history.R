# manage dependencies with {attachment}
# browseURL("https://cran.r-project.org/web/packages/attachment/vignettes/a-fill-pkg-description.html")

usethis::use_build_ignore("dev")

usethis::use_package("here")
usethis::use_package("purrr")
usethis::use_package("robotoolbox")
usethis::use_package("dm")
usethis::use_package("dplyr")
usethis::use_package("stringr")
usethis::use_package("lubridate")
usethis::use_package("gtsummary")
usethis::use_package("haven")
usethis::use_package("flextable")
usethis::use_package("officer")
usethis::use_package("here")
usethis::use_package("gtreg")
usethis::use_package("labelled")
usethis::use_package("readr")
usethis::use_package("purrr")
usethis::use_package("janitor")
usethis::use_package("usethis")
usethis::use_package("forcats")
usethis::use_package("openxlsx")
usethis::use_package("ggplot2")
usethis::use_package("scales")
usethis::use_package("rlang")


# use configuration file
attachment::att_amend_desc(update.config = T)

# Remotes field - packages not in cran


