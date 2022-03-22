#' Print Pattern
#'
#' Formats a pattern dataframe such that it prints in the way that an end user expects
#'
#' @param pattern
#'
#' @return
#' @export
#'
#' @examples
print_pattern <- function(pattern) {

  formatted <- paste("Rnd", pattern$round, "-", pattern$stitches)
  formatted <- paste(formatted, collapse = "\n")
  cat(formatted)

}
