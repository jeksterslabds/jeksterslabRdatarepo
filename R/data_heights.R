#' Galton's Height Data
#'
#' This is the famous Galton data on the heights or parents and their children
#' (i.e., where the term "regression" comes from).
#'
#' @format A data frame with 898 cases and 6 variables:
#' \describe{
#'   \item{family}{
#'     The family that the child belongs to,
#'     labeled by the numbers from 1 to 204 and 136A.
#'   }
#'   \item{father}{
#'     The father's height,
#'     in inches.
#'   }
#'   \item{mother}{
#'     The mother's height,
#'     in inches.
#'   }
#'   \item{gender}{
#'     The gender of the child,
#'     male (M) or female (F).
#'   }
#'   \item{height}{
#'     The height of the child,
#'     in inches.
#'   }
#'   \item{kids}{
#'     The number of kids in the family of the child.
#'   }
#'   \item{male}{
#'     1 if the child is male.
#'     0 if the child is female.
#'   }
#'   \item{female}{
#'     1 if the child is female.
#'     0 if the child is male.
#'   }
#' }
#' @examples
#' data(heights, package = "jeksterslabRdatarepo")
#' str(heights)
#' head(heights)
#' @references
#' Galton, F. (1886).
#' Regression Towards Mediocrity in Hereditary Stature.
#' *The Journal of the Anthropological Institute of Great Britain and Ireland*, 15, 246-263.
#' doi:[10.2307/2841583](https://doi.org/10.2307/2841583).
#'
#' [Wikipedia: Regression toward the mean](https://en.wikipedia.org/wiki/Regression_toward_the_mean)
#'
#' [The troubling legacy of Francis Galton](https://rss.onlinelibrary.wiley.com/doi/10.1111/j.1740-9713.2019.01275.x)
#'
#' @source
#' Francis Galton, 2017,
#' "Galton height data",
#' \url{https://doi.org/10.7910/DVN/T0HSJ1}, Harvard Dataverse, V1,
#' UNF:6:2ty+0YgqR2a66FlvjCuPkQ== \[fileUNF\]
"heights"
