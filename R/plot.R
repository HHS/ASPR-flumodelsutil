#' @title Plot fitIncidence
#' @description Creates a plot comparing the fit and original incidence.
#' @param x fitIncidence object created by fitIncidence function
#' @method plot fitIncidence
#' @importFrom graphics axis legend lines plot title
#' @keywords internal
#' @export
plot.fitIncidence <- function(x, ...) {
  modelWeeklyIncidence <- getInfectionTimeSeries(x$model, incidence = TRUE, byWeek = TRUE, byGroup = FALSE, asRate = TRUE,
                                            symptomatic = x$parameters.internal$symptomaticIncidence, 
                                            fractionSymptomatic = x$parameters.internal$fractionSymptomatic)
  referenceIncidence <- x$parameters.internal$incidence$incidence
  
  
  scalePoints <- pretty(c(0, max(modelWeeklyIncidence, referenceIncidence / x$parameters.fixed$population, na.rm = TRUE)))
  
  graphics::plot(x = seq_len(modelWeeklyIncidence), y = modelWeeklyIncidence, 'l', lwd = 3, col = 1,
       xlab = "Time (weeks)", ylab = "", yaxt = "n", ylim = c(0,max(scalePoints)) )
  graphics::lines(x = seq_len(referenceIncidence) + x$parameters.internal$seedWeeksBeforeIncidence,
        y = referenceIncidence / x$parameters.fixed$population, 'l', lwd = 3, col = 2)
  
  graphics::title("Comparison of fitted model vs. refernce incidence")
  graphics::legend("topright", legend = c("Fitted model", "Reference incidence"),
         col = 1:2, lty = c(1,1), pch = c(NA,NA),
         bty = "n", lwd = 1)
  graphics::axis(2, at = scalePoints, las = 1,
       labels = paste0(scalePoints * 100, "%"))
}
