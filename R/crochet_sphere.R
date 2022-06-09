#' Crochet Sphere
#'
#' Generates a pattern for a sphere. R for radius must be an even number
#'
#' @return
#' @export
#'
#' @examples
crochet_sphere <- function(r) {

  # add error check for odd numbers of rounds

  stopifnot(r %% 2 == 0)

  # generate pattern

  pattern <- data.frame(round = 1:(r*3-1),stitches = NA)

  # start with magic ring

  pattern$stitches[1] <- "sc 6 in magic ring [6]"
  pattern$stitches[2] <- "inc in each [12]"
  pattern$stitches[3:r] <- paste0("(inc, sc in next ", 3:r - 2, ") rep 6 times [",(3:r)*6,"]")
  pattern$stitches[(r+1):(r*2)] <- paste0("sc in each around [",(r*6),"]")
  pattern$stitches[(r*2+1):(r*3-2)] <- paste0("(dec, sc in next ",(r-2):1,") rep 6 times [",((r-1):2)*6,"]")
  pattern$stitches[r*3-1] <- "dec in all 6"

  return(pattern)

}
