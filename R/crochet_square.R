#' Crochet Square
#'
#' This creates a pattern for a square worked in rounds, not rows
#'
#' @param l side of square, in stitches
#'
#' @return
#' @export
#'
#' @examples
crochet_square <- function(l) {
  #error checking - length must be even

  # call rectangle

  pattern <- crochet_rectangle(l,l)

  # adjust first line

  pattern$stitches[1] <- "sc 4 in magic ring [4]"
}
