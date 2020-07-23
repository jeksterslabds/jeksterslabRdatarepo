#' Singular Value Decomposition in Regression Analysis
#'
#' This data set can be used to demostrate the use of
#' singular value decomposition in regression analysis.
#'
#' @format A list with two elements `y` and `X`.
#' `y` is a vector of length 8 and `X` is an 8 by 3 matrix.
#' @examples
#' data(svd, package = "jeksterslabRdatarepo")
#' str(svd)
#' head(svd)
#' @references
#' Mandel, J. (1982). Use of the Singular Value Decomposition in Regression Analysis.
#' *The American Statistician*, *36*(1), 15-24.
#' doi:[10.1080/00031305.1982.10482771](https://doi.org/10.1080/00031305.1982.10482771).
#' @source
#' Table 1 in Mandel (1982)
"svd"
