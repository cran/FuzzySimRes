#' Fuzzy control charts data
#'
#' A set of fuzzy epistemic data concerning electronic circuit thickness, which is one of the most important
#'  quality characteristics in a process that produces electronic boards for vacuum cleaners.
#'
#' @format
#' A list of 90 triangular fuzzy numbers (as defined in \code{FuzzyNumbers} package) that contains
#' 30 samples, each of size three.
#' Each observation in the list has its label \code{X.y.z}, where \code{y} is the number of sample, and \code{z} is the
#' number of the element in this sample.
#'
#' @source
#' Faraz, A., Shapiro, A.F. (2010)
#' An application of fuzzy random variables to control charts.
#' Fuzzy Sets and Systems, 161(20)
#' <https://doi.org/10.1016/j.fss.2010.05.004>
"controlChartData"
