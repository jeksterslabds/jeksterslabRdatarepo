#' Anscombe's Quartet
#'
#' Anscombe's quartet is data set
#' consisting of four pairs of data
#' with nearly identical descriptive statistics.
#' but appear differently when plotted.
#'
#' @format A data frame with 11 cases and 8 variables:
#' \describe{
#'   \item{x1}{
#'     x for pair number 1.
#'   }
#'   \item{y1}{
#'     y for pair number 1.
#'   }
#'   \item{x2}{
#'     x for pair number 2.
#'   }
#'   \item{y2}{
#'     y for pair number 2.
#'   }
#'   \item{x3}{
#'     x for pair number 3.
#'   }
#'   \item{y3}{
#'     y for pair number 3.
#'   }
#'   \item{x4}{
#'     x for pair number 4.
#'   }
#'   \item{y4}{
#'     y for pair number 4.
#'   }
#' }
#' @examples
#' data(anscombe, package = "jeksterslabRdatarepo")
#' str(anscombe)
#' head(anscombe)
#' @references
#' Anscombe, F. J. (1973).
#' Graphs in statistical analysis.
#' *American Statistician*. *27* (1), 17-21.
#' doi:[10.1080/00031305.1973.10478966](https://doi.org/10.1080/00031305.1973.10478966).
#'
#' [Wikipedia: Anscombe's quartet](https://en.wikipedia.org/wiki/Anscombe\%27s_quartet)
#' @source
#' Table in Anscombe (1973).
"anscombe"
