#' Wages and Related Data for 1289 Workers (Matrix Format)
#'
#' A random sample of 1,280 workers
#' from the Cirrent Population Survey (CPS)
#' for March 1995.
#'
#' @format
#' A list with two elements:
#' \describe{
#'   \item{y}{wages}
#'   \item{X}{gender, race, union, education, experiemce, and age}
#' }
#' `X` has the following elements:
#' \describe{
#'   \item{gender}{
#'     Gender, 1 for female, 0 for male.
#'   }
#'   \item{race}{
#'     Race, 1 for nonwhite workers and 0 for white workers.
#'   }
#'   \item{union}{
#'     Union status, 1 if in union, 0 otherwise.
#'   }
#'   \item{education}{
#'     Education in years.
#'   }
#'   \item{experience}{
#'     Work experience in years.
#'   }
#'   \item{age}{
#'     Age in years.
#'   }
#' }
#' Both `y` and `X` have 1289 rows.
#' @examples
#' data(wages.matrix, package = "jeksterslabRdatarepo")
#' str(wages.matrix)
#' head(wages.matrix[["y"]])
#' head(wages.matrix[["X"]])
#' @source
#' From Chapter 4 in Gujarati (2019).
#' @references
#' Gujarati, D. N. (2019). *Linear regression: A mathematical introduction*.
#' Thousand Oaks: SAGE Publications.
#' ISBN:9781544336558.
#' Google:[pqxyDwAAQBAJ](https://books.google.com/books/about/Linear_Regression.html?id=pqxyDwAAQBAJ)
"wages.matrix"
