#' Crochet Circle
#'
#' Creates a pattern for a flat circle, crocheted in rounds. The rounds parameter is
#' to the radius of the circle (e.g a circle with 5 rounds will have a radius of 5 sc)
#'
#' @param rounds # number of rounds
#'
#' @return pattern
#' @export
#'
#' @examples
crochet_circle <- function(rounds) {


  pattern <- data.frame(round = 1:rounds,stitches = NA)

  # start with magic ring

  pattern$stitches[1] <- "sc 8 in magic ring [8]"
  pattern$stitches[2] <- "inc in each [16]"
  pattern$stitches[3:rounds] <- paste0("(inc, sc in next ", 3:rounds - 2, ") rep 8 times ", "[",(3:rounds)*8,"]")

  return(pattern)
}
