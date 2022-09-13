AirPassengers
plot.ts(AirPassengers)
a = decompose(AirPassengers)
a$random
a$trend
plot(a)
df = ts(AirPassengers)
acf = acf(df)
pacf = pacf(df)
library(forecast)
auto.arima(df)
ari = arima(df , order = c(4,1,2))
predict(ari , n.ahead = 5)

futurVal = forecast(ari,h=10, level=c(99.5))
plot(futurVal)
