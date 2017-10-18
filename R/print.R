#' @title Print fitIncidence
#' @description Prints a brief summary of a fitIncidence object.
#' @rdname print
#' @method print fitIncidence
#' @keywords internal
#' @export
print.fitIncidence <- function(x, ...) {
  if (x$fit$convergence)
    cat("Did not converge.")
  
  cat("Fit the following parameters:\n")
  print(unlist(x$parameters.fitted))
  cat("\n")
  
  cat("Reference attack rates are:", "\n")
  cat(paste0(round(100*x$parameters.internal$attackRatesToMatch, 2), "%"), "\n")
  cat("Calculated attack rates are:", "\n")
  cat(paste0(round(100*getInfections(x$model, symptomatic = TRUE, fractionSymptomatic = x$parameters.internal$fractionSymptomatic, asRate = TRUE) /
               x$model$parameters$populationFractions, 2), "%"), "\n")
  
  cat("\nThe model is:\n")
  print(x$model)
  
  cat("Reference seriological rate:", 
             round(100*sum(x$parameters.internal$incidence$incidence / x$parameters.fixed$population) / x$parameters.internal$fractionSymptomatic , 2), "%")
}