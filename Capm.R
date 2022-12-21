library(readxl)
capm <- read_excel("C:/Users/LAB PC/Downloads/capm2.xlsx")
View(capm)
summary(capm)
str(capm)

#Risk premium - (Rm - Rf)

capm$risk.premium <- capm$mkt - capm$riskfree
View(capm$risk.premium)

#scatter plot - Micrsoft
install.packages("ggplot2")
library(ggplot2)
theme_set(theme_bw())

ggplot(data = capm,
       aes(y = msft, x = risk.premium)) +
  geom_point(col = 'red') +
  xlab('Risk Premium') +
  ylab('Microsoft - Expected Return') +
  ggtitle('CAPM') +
  geom_abline(method = 'lm')

ggplot(data = capm,
       aes(y = ibm, x = risk.premium)) +
  geom_point(col = 'red') +
  xlab('Risk Premium') +
  ylab('Microsoft - Expected Return') +
  ggtitle('CAPM') +
  geom_abline(method = 'lm')

#Homework - 1. rest all plot them 2. SORTING - Selection and insertion.
