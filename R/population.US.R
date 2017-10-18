#' @name population.US
#' @title Population data for US from 2015.
#' @description Data from US Census 2015 estimate on US population by single age bins.
#' @docType data
#' @usage population.US
#' @format a \code{data.frame} with many columns. Those of interest for this package are:
#' \itemize{
#' \item YEAR: Which year the data corresponds to. Currently only 2015 data is provided.
#' \item AGE: Age of the population of interest. Age of X corresponds to [X,X+1),
#' so 0 means infants under one year of age. Age of 999 corresponds to the entire population.
#' \item TOT_POP: Total population in the given age bin (or entire US population if AGE == 999).
#' }
#' @source US Census
"population.US"
