#' @title pandemic.deaths
#' @description Timing information for historical influenza pandemics
#' @format A \code{data.frame} with 63 rows and 5 variables:
#' \describe{
#'   \item{\code{year}}{Year correseponding to data. \code{integer}}
#'   \item{\code{week}}{CDC ILI week. \code{integer}}
#'   \item{\code{week.of.pandemic}}{How many weeks since the beginning of the pandemic. Starts at 1 for the first recorded element of the given pandemic. \code{integer}}
#'   \item{\code{pandemic}}{Year of pandemic. Included pandemics are 1918, 1957, 1968, 2009. \code{integer}}
#'   \item{\code{deaths}}{Estimated mortality. Please note that not all estimates are for the entire US. \code{integer}
#'   \describe{
#'   \item{1918 data}{Excess death rates (annual basis) per 100k from influenza and pneumonia in 47 US cities.}
#'   \item{1957 data}{Influenza and pneumonia deaths in the United States.}
#'   \item{1968 data}{Influenza and pneumonia  deaths in 122 cities in the United States.}
#'   \item{2009 data}{Influenza deaths in the United States. This includes both waves. For wave 2 only, just use 2009 week 31 (week.of.pandemic 18) and onwards.}
#'   }}
#'}
#' @source
#' \describe{
#' \item{1918 data}{Table B in Collins, S. D., Frost, W. H., Gover, M. & Sydenstricker, E. Mortality from Influenza and Pneumonia in 50 Large Cities of the United States 1910-1929. Public Health Reports 45, 2277-2328 (1930). doi: 10.2307/4579795}
#' \item{1957 data}{Trotter, Y., Dunn, Frederick., Drachman, R., Henderson, D., Pizzi, M., & Langmuir, A. Asian Influenza in the United States, 1957-1958. Am. J. Hyg. 1959, Vol 70: 34-50. doi: 10.1093/oxfordjournals.aje.a120063}
#' \item{1968 data}{Sharrar RG. National influenza experience in the USA, 1968-69. Bulletin of the World Health Organization. 1969;41(3-4-5):361-366. PMID: 5309440}
#' \item{2009 data}{Borse RH, Shrestha SS, Fiore AE, et al. Effects of Vaccine Program against Pandemic Influenza A(H1N1) Virus, United States, 2009–2010. Emerging Infectious Diseases. 2013;19(3):439-448. doi:10.3201/eid1903.120394}
#' }
"pandemic.deaths"
