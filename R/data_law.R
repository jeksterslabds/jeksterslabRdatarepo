#' Law School Data
#'
#' The population of measurements (`LSAT`, `GPA`),
#' for the universe of 82 American law schools
#' participating in a large study of admission practices.
#' Two measurements were made on the entering classes of each school in 1973: `LSAT`,
#' the average score for the class on a national law test,
#' and `GPA`,
#' the average undergraduate grade-point average for the class.
#'
#' @format
#' A data frame with 82 cases and 2 variables:
#' \describe{
#'   \item{LSAT}{
#'     Law School Admission Test.
#'   }
#'   \item{GPA}{
#'     Grade Point Average.
#'   }
#' }
#' @examples
#' data(law, package = "jeksterslabRdatarepo")
#' str(law)
#' head(law)
#' @references
#' Efron, B., & Tibshirani, R. J. (1993).
#' *An introduction to the bootstrap*.
#' New York, N.Y: Chapman & Hall.
#' ISBN:9780412042317.
#' Google:[gLlpIUxRntoC](https://books.google.com/books/about/An_Introduction_to_the_Bootstrap.html?id=gLlpIUxRntoC).
#'
#' @source
#' Table 3.2 in Efron and Tibshirani (1993).
"law"
