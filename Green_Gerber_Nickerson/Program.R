setwd("F:/GreenGerberNickerson_JP_2003/")

library(Zelig) #this loads a package to do the biprobit analyses
# related vignette, if interested: http://cran.r-project.org/web/packages/Zelig/vignettes/bprobit.pdf

# Re-exported Stata .dta as .csv since the current .csv doesn't seem to match up (maybe sorted?)
data <- read.csv("GreenGerberNickerson_JP_2003_1.csv")

# Sorting turf in proper alphabetical order.
data$turf = as.character(data$turf)
data$turf[nchar(data$turf) == 1] = paste("000", data$turf[nchar(data$turf) == 1], sep = "")
data$turf[nchar(data$turf) == 2] = paste("00", data$turf[nchar(data$turf) == 2], sep = "")
data$turf[nchar(data$turf) == 3] = paste("0", data$turf[nchar(data$turf) == 3], sep = "")

# Building cityturf variable.
data$cityturf = as.factor(paste(data$city, data$turf, sep = "_"))

#as.numeric(data$cityturf)  # This agrees with the "cityturf" variable in Stata.

# Recreates table in .do file:
cbind(table(as.numeric(data$cityturf)), round(100*table(as.numeric(data$cityturf))/nrow(data), 2), round(cumsum(100*table(as.numeric(data$cityturf)))/nrow(data), 2))

data$wellbehaved = as.numeric(!(as.numeric(data$cityturf) %in% c(46,187,11,14,16,18,19,23,27,28,32,33,45,61,62)))

# Table 1 (Should be Table 2 in the paper)
# Counts by city:
table(data$city)

# Column 1: (as noted below, actually some of these are very slightly different, we actually need to remove the conditioning
#           on wellbehaved) 
lm1.b = lm(voted00 ~ treatmen+cityturf,data=data[data$wellbehaved == 1 & data$city == "Bridgeport",])
summary(lm1.b)$coefficients[2,]
lm1.c = lm(voted00 ~ treatmen+cityturf,data=data[data$wellbehaved == 1 & data$city == "COLUMBUS",])
summary(lm1.c)$coefficients[2,]
lm1.d = lm(voted00 ~ treatmen+cityturf,data=data[data$wellbehaved == 1 & data$city == "DETROIT",])
summary(lm1.d)$coefficients[2,]
lm1.m = lm(voted00 ~ treatmen+cityturf,data=data[data$wellbehaved == 1 & data$city == "MINNEAPOLIS",])
summary(lm1.m)$coefficients[2,]
lm1.r = lm(voted00 ~ treatmen+cityturf,data=data[data$wellbehaved == 1 & data$city == "Raleigh",])
summary(lm1.r)$coefficients[2,]
lm1.s = lm(voted00 ~ treatmen+cityturf,data=data[data$wellbehaved == 1 & data$city == "ST PAUL",])
summary(lm1.s)$coefficients[2,]
lm1.all = lm(voted00 ~ treatmen+cityturf,data=data[data$wellbehaved == 1,])
summary(lm1.all)$coefficients[2,]

# Note --- The numbers (or sample size counts) do not match if there is any selection using "wellbehaved".
# The following results match Table 2 in the paper, without conditioning on the "wellbehaved" variable at all.
lm1.b = lm(voted00 ~ treatmen+cityturf,data=data[data$city == "Bridgeport",])
summary(lm1.b)$coefficients[2,]
lm1.c = lm(voted00 ~ treatmen+cityturf,data=data[data$city == "COLUMBUS",])
summary(lm1.c)$coefficients[2,]
lm1.d = lm(voted00 ~ treatmen+cityturf,data=data[data$city == "DETROIT",])
summary(lm1.d)$coefficients[2,]
lm1.m = lm(voted00 ~ treatmen+cityturf,data=data[data$city == "MINNEAPOLIS",])
summary(lm1.m)$coefficients[2,]
lm1.r = lm(voted00 ~ treatmen+cityturf,data=data[data$city == "Raleigh",])
summary(lm1.r)$coefficients[2,]
lm1.s = lm(voted00 ~ treatmen+cityturf,data=data[data$city == "ST PAUL",])
summary(lm1.s)$coefficients[2,]
lm1.all = lm(voted00 ~ treatmen+cityturf,data=data)
summary(lm1.all)$coefficients[2,]

# Column 2:
lm2.b = lm(voted01 ~ treatmen+cityturf,data=data[data$city == "Bridgeport",])
summary(lm2.b)$coefficients[2,]
lm2.c = lm(voted01 ~ treatmen+cityturf,data=data[data$city == "COLUMBUS",])
summary(lm2.c)$coefficients[2,]
lm2.d = lm(voted01 ~ treatmen+cityturf,data=data[data$city == "DETROIT",])
summary(lm2.d)$coefficients[2,]
lm2.m = lm(voted01 ~ treatmen+cityturf,data=data[data$city == "MINNEAPOLIS",])
summary(lm2.m)$coefficients[2,]
lm2.r = lm(voted01 ~ treatmen+cityturf,data=data[data$city == "Raleigh",])
summary(lm2.r)$coefficients[2,]
lm2.s = lm(voted01 ~ treatmen+cityturf,data=data[data$city == "ST PAUL",])
summary(lm2.s)$coefficients[2,]
lm2.all = lm(voted01 ~ treatmen+cityturf,data=data)
summary(lm2.all)$coefficients[2,]

# Column 3:
# Neither set of numbers matches perfectly, but matches within 0.1 percent
lm3.b = lm(contact ~ treatmen+cityturf,data=data[data$city == "Bridgeport",])
summary(lm3.b)$coefficients[2,1]
lm3.c = lm(contact ~ treatmen+cityturf,data=data[data$city == "COLUMBUS",])
summary(lm3.c)$coefficients[2,1]
lm3.d = lm(contact ~ treatmen+cityturf,data=data[data$city == "DETROIT",])
summary(lm3.d)$coefficients[2,1]
lm3.m = lm(contact ~ treatmen+cityturf,data=data[data$city == "MINNEAPOLIS",])
summary(lm3.m)$coefficients[2,1]
lm3.r = lm(contact ~ treatmen+cityturf,data=data[data$city == "Raleigh",])
summary(lm3.r)$coefficients[2,1]
lm3.s = lm(contact ~ treatmen+cityturf,data=data[data$city == "ST PAUL",])
summary(lm3.s)$coefficients[2,1]
lm3.all = lm(contact ~ treatmen+cityturf,data=data)
summary(lm3.all)$coefficients[2,1]

# Column 4:
library(AER)
# Package "AER" contains a function called "ivreg()", which performs instrumental variables regression.
# Note: these are slow, so it may take a few minutes for each set of results to complete.
lm4.b = ivreg(voted01 ~ contact + cityturf | treatmen + cityturf, data = data[data$city == "Bridgeport",])
summary(lm4.b)$coefficients[2,]
lm4.c = ivreg(voted01 ~ contact + cityturf | treatmen + cityturf, data = data[data$city == "COLUMBUS",])
summary(lm4.c)$coefficients[2,]
lm4.d = ivreg(voted01 ~ contact + cityturf | treatmen + cityturf, data = data[data$city == "DETROIT",])
summary(lm4.d)$coefficients[2,]
lm4.m = ivreg(voted01 ~ contact + cityturf | treatmen + cityturf, data = data[data$city == "MINNEAPOLIS",])
summary(lm4.m)$coefficients[2,]
lm4.r = ivreg(voted01 ~ contact + cityturf | treatmen + cityturf, data = data[data$city == "Raleigh",])
summary(lm4.r)$coefficients[2,]
lm4.s = ivreg(voted01 ~ contact + cityturf | treatmen + cityturf, data = data[data$city == "ST PAUL",])
summary(lm4.s)$coefficients[2,]

# Hitting R's memory limit.
lm4.all = ivreg(voted01 ~ contact + cityturf | treatmen + cityturf, data = data)
summary(lm4.all)$coefficients[2,]

# In Stata, this seems to take 3hrs+ to run (with over 300 iterations), but R stops at 30 iterations, resource intensive. 
# Parameters are similar in R after 30 iterations, but not exactly the same. At this point it is unclear what the exact issue is.
# It could be slight differences in the estimation procedure, rounding issues, the large number of variables involved or memory restraints.
bpm.1 <- zelig(list(mu1 = voted01 ~ contact+cityturf, mu2 = contact ~ treatmen+cityturf, rho=~1),model="bprobit", data=data, subset=data$wellbehaved==1)
data$famsize <- relevel(as.factor(data$famsize),4)

bpm.2 <- zelig(list(mu1 = voted01 ~ contact+voted00+famsize+cityturf, mu2 = contact ~ treatmen+voted00+famsize + cityturf, rho=~1),model="bprobit", data=data, subset=data$wellbehaved==1)
