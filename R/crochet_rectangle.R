#' Crochet Rectangle
#'
#' This creates a pattern for a rectangle worked in rounds, not rows
#'
#' @param l in number of stitches
#' @param w in number of stitches
#'
#' @return
#' @export
#'
#' @examples
crochet_rectangle <- function(l, w) {

  # error checking
  ## both inputs should be even numbers
  ## Length needs to be >= Width

  chain <- l - w
  x <- chain - 2
  rounds <- 1:(w/2)

  pattern <- data.frame(round = rounds)
  pattern$stitches <- NA

  pattern$stitches[1] <- paste("Ch", chain, ". 1 sc into the 2nd stitch from hook,",x,"sc, 5 sc into the next stitch. Along the underside of the chain, sc in next,",x,". 2sc into next chain, sl st into chain.")

  #wip here - logic unfinished
  pattern$stitches[2:rounds] <- paste("Ch 1. Sc in next stitch. 3 sc in next stitch. Sc in next", chain )

  pattern
}
