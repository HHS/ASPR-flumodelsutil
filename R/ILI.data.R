#' @name ILI.data
#' @title Offline ILINet data.
#' @description Offline data from ILINet for the whole US and some years. Only includes
#' nationwide data, not region-specific data. Dataset contains 1997/1998-2014/2015 seasons.
#' It is recommended that users use \code{cdcfluview::get_flu_data} as this is a static extract
#' from that system.
#' @format a \code{data.frame} with the following columns:
#' \itemize{
#' \item REGION TYPE: Only value is National
#' \item REGION: Only value is NA (since it's national data)
#' \item YEAR: Integers with values 1997 to 2015 corresponding to calendar year
#' \item Season: Integers with values 1997 to 2015 corresponding to the start of the year X/X+1 flu season.
#' \item WEEK: ILINet week
#' \item Date: Start date of the week.
#' \item \% WEIGHTED ILI: ILINet reported % of weighted hospital cases due to ILI.
#' \item \%UNWEIGHTED ILI: ILINet reported % of unweighted hospital cases due to ILI.
#' \item AGE 0-4: Number of ILI cases in the 0-4 age bracket.
#' \item AGE 25-49: Number of ILI cases in the 25-49 age bracket.
#' \item AGE 25-64: Number of ILI cases in the 24-64 age bracket.
#' \item AGE 5-24: Number of ILI cases in the 5-24 age bracket.
#' \item AGE 50-64: Number of ILI cases in the 50-64 age bracket.
#' \item AGE 65: Number of ILI cases in the 64+ age bracket.
#' \item ILITOTAL: Total number of ILI reported cases.
#' \item NUM. OF PROVIDERS: Number of providers reporting to ILINet.
#' \item TOTAL PATIENTS: Total number of patients reported to ILINet.
#' }
#' @source CDC ILINet
"ILI.data"
