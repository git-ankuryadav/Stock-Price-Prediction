rm(list = ls())
library(tseries)
library(forecast)

setwd(this.path::here())
fordData<- read.csv("../dataFiles/Ford.csv")
fordData<- data.frame(fordData)

# fordData$logReturn<- log(fordData$Close/fordData$Open)
# dim(fordData)
#
# head(fordData)
#
# fordData<- fordData[-1,]
# head(fordData)
#
# plot(fordData$logReturn[1:1000], type = "l")

## traditional way to calculate the returns
df<- fordData
df$LogReturn <- c(NA, diff(log(df$Close)))

plot(df$LogReturn)

hist(df$LogReturn, breaks = 20, main = "Histogram of Log Returns", xlab = "Log Return", probability = TRUE)
lines(density(na.omit(df$LogReturn)), col = "blue")
summary(df$LogReturn)

adf.test(na.omit(df$LogReturn))

log_returns_ts <- ts(na.omit(df$LogReturn))
fit <- auto.arima(log_returns_ts)
summary(fit)

forecasted <- forecast(fit, h = 5)
par(mfrow = c(1,1))
plot(forecasted)
lines(df$LogReturn, col = 2)

ran<- c(min(forecasted$fitted, df$LogReturn, na.rm = TRUE),
        max(forecasted$fitted, df$LogReturn, na.rm = TRUE))
plot(df$LogReturn, ylim  = ran)
lines(forecasted$fitted, col = 2)







