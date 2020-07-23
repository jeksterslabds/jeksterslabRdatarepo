#' Singular Value Decomposition in Regression Analysis
#'
#' This data set can be used to demostrate the use of
#' singular value decomposition in regression analysis.
#'
#' @format A list with four elements `ya`, `Xa`, `yb`, and `Xb`.
#' `y*` is a vector of length 8 and `X*` is an 8 by 3 matrix.
#' `ya` and `Xa` correspond to Table 1 in Mandel (1982).
#' `yb` and `Xb` correspond to Table 4 in Mandel (1982).
#' @examples
#' data(svd.linreg, package = "jeksterslabRdatarepo")
#' str(svd.linreg)
#' head(svd.linreg)
#' @references
#' Mandel, J. (1982). Use of the Singular Value Decomposition in Regression Analysis.
#' *The American Statistician*, *36*(1), 15-24.
#' doi:[10.1080/00031305.1982.10482771](https://doi.org/10.1080/00031305.1982.10482771).
#' @source
#' Tables 1 and 4 in Mandel (1982)
"svd.linreg"
