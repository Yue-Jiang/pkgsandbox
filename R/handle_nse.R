#' Using non-standard evaluation in a function
#' Results in NOTE: no visible binding for global variable "state"
#'
#' @param df A tibble
#' @return A tibble
#' @importFrom dplyr filter
#' @export
filter_nse <- function(df) {
  filter(df, state == "treated")
}

#' Using !! sym in a function, existing column
#'
#' @param df A tibble
#' @return A tibble
#' @importFrom dplyr filter
#' @importFrom rlang !! sym
#' @export
filter_bangbangsym <- function(df) {
  filter(df, !!sym("state") == "treated")
}

#' Using .data in a function, existing column
#'
#' @param df A tibble
#' @return A tibble
#' @importFrom dplyr filter
#' @importFrom rlang .data
#' @export
filter_dotdata <- function(df) {
  filter(df, .data$state == "treated")
}
