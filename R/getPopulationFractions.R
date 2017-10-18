#' @title Get population fractions
#' @description Gets population fractions for a given set of age ranges
#' @param ages Vector of ages. Each element represents the upper range of an age range. The lowest bound is presumed to be zero.
#'    If the oldest age does not reach the end of the population range, an additional element is added to span the full range.
#'    This function uses the population.US data included in this package.
#'    A future element could use the acs package to download data dynamically, but that requires the user to request an individual
#'    key from the ACS for access, which would make this package fare less accessible.
#' @param year Year to sample population from. Defaults to 2015.
#' @param population Population data frame that contains age and population values. Defaults to 2015 US population.
#'    The two required columns of the data frame are AGE and TOT_POP.
#' @return A vector population fractions that sums to 1
#' @importFrom dplyr filter select summarise
#' @author Matt Clay <clay.matt@gmail.com>
#' @export
getPopulationFractions <- function(ages,
                                   year = 2015,
                                   population = population.US[population.US$AGE != 999 & population.US$YEAR == year & population.US$MONTH == 1, c("AGE", "TOT_POP")]) {

  if(nrow(population) == 0)
    stop("No population for given year")

  if(is.unsorted(ages))
    stop("Ages must be increasing order")

  if(sum(ages - round(ages)) != 0  | min(ages) < 1)
    stop("Ages must be positive integers")

  maxAge <- max(population[,"AGE"])

  if (max(ages) >= maxAge)
    stop("Final age bracket includes no people. The final element in ages is the starting point of the final age bin. There is no need to include an endpoint representing the max age in the population.")

  ages <- append(ages, maxAge + 1)

  population.fractions <- vapply(ages, function(x) {sum(population[population$AGE <= x, "TOT_POP"])},
                                 FUN.VALUE = numeric(1))
  population.fractions <- c(population.fractions[1],
                            population.fractions[2:length(population.fractions)] - population.fractions[1:(length(population.fractions)-1)] ) /
    sum(population[,"TOT_POP"])
  names(population.fractions) <- c(paste0("0-", ages[1]),
    if(length(ages) > 1) {
           vapply(2:length(ages), function(x) { paste0(ages[x-1]+1, ifelse(ages[x] >= maxAge, "+", paste0("-", ages[x])))}, FUN.VALUE = character(1))
    }
  )

  return(population.fractions)
}
