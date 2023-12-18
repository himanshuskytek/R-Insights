rm(list=ls())
library(rio)

Cr_list_cars = import("Cars list Data.xlsx")
colnames(Cr_list_cars) = tolower(make.names(colnames(Cr_list_cars)))
attach((Cr_list_cars))


set.seed(56390726)
my_primary_data_set = Cr_list_cars[sample(1:nrow(Cr_list_cars),200,replace=FALSE),]


p_out = lm(price~odometer,data=my_primary_data_set)
summary(p_out)


confint(p_out)


plot(my_primary_data_set$price,p_out$fitted.values,pch=19,
     main = "Between Actual price and Fitted")
abline(0,1,col="red", lwd=3)


qqnorm(p_out$residuals,pch=19, main="O&G Normality Plot")
qqline(p_out$residuals,col="red",lwd=3)


hist(p_out$residuals,col="red",
     main="Histogram of Residuals")


plot(p_out$fitted.values,scale(p_out$residuals),
     pch=19,
     main="price and Odometer St residual")
abline(0,0,col="red",lwd=3)