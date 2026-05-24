#' Target beneficiary verification criteria and indicators dataset
#'
#' A structured dataset containing the core humanitarian vulnerability criteria
#' alongside their corresponding assessment indicators tracked during household survey evaluations.
#'
#' @format A tibble data frame with 17 rows and 2 columns:
#' \describe{
#'   \item{Criteria}{Character categorization of the target vulnerability group}
#'   \item{Indicator}{Specific operational metric tracked during household data collection}
#' }
#' @source Internal evaluation survey records
"verification_criteria"


#' UNOcha survey tool
#'
#'
#' @format A tibble data frame with 17 rows and 2 columns:
#' \describe{
#'   \item{type}{Character one among select_one select_multiple, integer, text, note, etc}
#'   \item{name}{character. question name}
#'   \item{label}{character. question label}
#'   \item{hint}{character. question hint}
#'   \item{calculation}{character. question calculation equation}
#'   \item{required}{character. true/false specify if question required}
#'   \item{appearance}{character. question appearance}
#'   \item{constraint}{character. question constraint}
#'   \item{relevant}{character. question relevant (branching logic)}
#'   \item{choice_filter}{character. question choice filter}
#'   \item{constraint_message}{character. question constraint message}
#'   \item{repeat_count}{character. question repeat count}
#'   \item{n}{character. question row number}
#' }
#' @source Internal survey
"survey"

#' UNOcha survey choices
#'
#'
#' @format A tibble data frame with 17 rows and 2 columns:
#' \describe{
#'   \item{name}{character. question name}
#'   \item{label}{character. question label}
#'   \item{county}{character. county}
#'   \item{subcounty}{character. subcounty}
#'   \item{ward}{character. ward}
#'   \item{sublocation}{character. sublocation}
#'   \item{enum_egency}{character. agency}
#' }
#' @source Internal survey
"choices"
