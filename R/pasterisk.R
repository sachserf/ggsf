#' Classify significance levels
#'
#' @param p.value Numeric vector. Specify vector to classify.
#'
#' @export
pasterisk <- function(p.value) {
  ifelse(p.value >= 0.05, "n.s.", ifelse(p.value < 0.05 & p.value >= 0.01, "*", ifelse(p.value < 0.01 & p.value >= 0.001, "**",
                                                                                       ifelse(p.value < 0.001, "***", NA))))
}
