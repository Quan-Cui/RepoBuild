#' lifecycle
#'
#' add the badge to your repo's readme doc.
#'
#' @param lifecycle a word choosing from experimental, maturing, stable, dormant, or retired
#'
#' @return the text you can copy and paste to readme.md
#' @export
#'
#' @examples  lifecycle("experimental")
lifecycle <- function(lifecycle) {
  valid_lifecycles <- c("experimental", "maturing", "stable", "dormant", "retired")

  if (!lifecycle %in% valid_lifecycles) {
    stop("Invalid lifecycle status. Available options are: experimental, maturing, stable, dormant, retired")
  }

  if (lifecycle == "experimental") {
    return("[![](https://img.shields.io/badge/Lifecycle-Experimental-339999)](https://lifecycle.r-lib.org/articles/stages.html)")
  } else if (lifecycle == "maturing") {
    return("[![](https://img.shields.io/badge/Lifecycle-Maturing-007EC6)](https://lifecycle.r-lib.org/articles/stages.html)")
  } else if (lifecycle == "stable") {
    return("[![](https://img.shields.io/badge/Lifecycle-Stable-97ca00)](https://lifecycle.r-lib.org/articles/stages.html)")
  } else if (lifecycle == "dormant") {
    return("[![](https://img.shields.io/badge/Lifecycle-Dormant-ff7f2a)](https://lifecycle.r-lib.org/articles/stages.html)")
  } else if (lifecycle == "retired") {
    return("[![](https://img.shields.io/badge/Lifecycle-Retired-d45500)](https://lifecycle.r-lib.org/articles/stages.html)")
  }
}
