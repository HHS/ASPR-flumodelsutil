# library(readr)
# 
# drive <- "d:"
# 
# POLYMOD.matrix <- read.csv(paste0(drive, "/my docs/flu/POLYMOD/UK all contacts.csv"), header = TRUE, row.names = 1)
# 
# #This contains the population sizes that will be used for re-grouping (one entry per column/row of POLYMODdata)
# population.UK <- unlist(read.csv(paste0(drive, "/my docs/flu/POLYMOD/UK population.csv"), header = TRUE))
# 
# #This describes the age ranges in the source POLYMOD data
# POLYMOD.age.ranges <- read.csv(paste0(drive, "/my docs/flu/POLYMOD/POLYMODAgeRanges.csv"), header = TRUE, row.names = 1)
# 
# population.US <- read_csv(file.path(drive, "/my docs/flu/seasonal/census 2015.csv"))
# 
# ILI.data <- read_csv(file.path(drive, "/my docs/flu/seasonal", "ILINet.csv"))
# 
# devtools::use_data(POLYMOD.matrix, population.UK, POLYMOD.age.ranges, population.US, ILI.data,
#                    pkg = "fitfludata",
#                    overwrite = TRUE)
# 
# drive <- "e:"; detach("package:fitfludata", unload=TRUE); install.packages(paste0(drive, "/shinyFlu/fitFluData/"), type = "source", repos = NULL); library(fitFluData)
# 
# pandemic.deaths <- read_csv("d:/my docs/flu/historical flu/pandemic_timeseries_R.csv")
