#' Model of the Stability of Alienation
#'
#' The data comes from research
#' on the stability of alienation using panel data.
#' The variables in the model were aggregated
#' from 932 individual responses
#' drawn from a rural region of Illinois
#' to a series of items from attitude scales
#' measured in two time points (1967 and 1971).
#' "Anomia" and "powerlessness" were both conceived
#' as indicators of the latent variable "alienation".
#' Background variables including "education",
#' and the socio-economic index score ("SEI")
#' were also measured in 1967
#' and were boh conceived as indicators
#' of the respondent's socio-economic status.
#'
#' @format A 6 by 6 variance-covariance matrix
#' summarized from 932 respondent.
#' \describe{
#'   \item{anomia67}{
#'     anomia measured in 1967.
#'   }
#'   \item{powerlessness67}{
#'     powerlessness measured in 1967
#'   }
#'   \item{anomia71}{
#'     anomia measured in 1971.
#'   }
#'   \item{powerlessness71}{
#'     powerlessness measured in 1971
#'   }
#'   \item{education}{
#'     measured as years of schooling
#'   }
#'   \item{sei}{
#'     Duncan's socio-economic index score ("SEI")
#'     of the respondent's occupation
#'   }
#' }
#' @examples
#' data(alienation, package = "jeksterslabRdatarepo")
#' str(alienation)
#' alienation
#' @references
#' Wheaton, B., Muthén, B., Alwin, D., & Summers, G. (1977).
#' Assessing Reliability and Stability in Panel Models.
#' *Sociological Methodology*, *8*, 84-136.
#' doi:[10.10.2307/270754](https://doi.org/10.2307/270754).
#'
#' @source
#' From Wheaton et al. (1977).
"alienation"
