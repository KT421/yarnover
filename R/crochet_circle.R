#' Crochet Circle
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

  pattern$stitches[1] <- "sc 6 in magic ring [6]"
  pattern$stitches[2] <- "inc in each [12]"
  pattern$stitches[3:rounds] <- paste0("(inc, sc in next ", 3:rounds - 2, ") rep 6 times ", "[",(3:rounds)*6,"]")

  return(pattern)
}
