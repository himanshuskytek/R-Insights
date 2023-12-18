# R-Insights
# Craig's List Cars Data Analysis with R
This repository contains an R script for data preprocessing and statistical analysis of vehicle listings on Craig's List. The analysis includes loading the master dataset, selecting a random sample, and performing a simple linear regression to predict car prices based on odometer readings.

Data Preprocessing
Loading Data: The master dataset, sourced from the "Cars list Data.xlsx" file, is loaded into R using the rio package.
Random Sample: A random sample of 200 autos is selected from the master dataset using the numerical portion of the U number as a random seed.
Statistical Analysis
Simple Linear Regression: A regression model is fitted with "price" as the dependent variable and "odometer" as the independent variable.
p_out = lm(price ~ odometer, data = my_primary_data_set)
summary(p_out)
Interpretation of Coefficients: Verbal interpretations of beta coefficients, p-values, and other statistics are provided for better understanding by laypersons.
Confidence Intervals: Confidence intervals for the "odometer" coefficient are calculated and interpreted.
confint(p_out)
Regression Diagnostics: Diagnostic plots are generated to assess the conformity of the regression model with LINE assumptions, including linearity, normality, and equality of variances.
Prediction
Predicting Price: Using the regression model, the script predicts the price of a Toyota with a given odometer reading (e.g., 78,521 miles).
predict(p_out, newdata, interval = "predict")
Confidence Interval on Prediction: The confidence interval on the predicted price is provided, along with a prediction for a hypothetical odometer reading of 98,000 miles.
