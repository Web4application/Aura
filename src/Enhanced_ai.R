library(survival)
library(survminer)
library(forecast)
library(dplyr)
library(ggplot2)
library(readr)

# ==========================
# Functions for AI Prediction
# ==========================

# Lifespan model
predict_lifespan <- function(lifespan_file) {
  lifespan_df <- read_csv(lifespan_file)
  
  lifespan_df <- lifespan_df %>%
    mutate(
      gender = as.factor(gender),
      event = as.numeric(event),
      bmi = weight / (height/100)^2,
      smoker = as.factor(smoker),
      alcohol = as.factor(alcohol),
      exercise_freq = as.numeric(exercise_freq),
      urban_residence = as.factor(urban_residence)
    )
  
  cox_model <- coxph(Surv(duration, event) ~ age + gender + bmi + blood_pressure +
                       smoker + alcohol + exercise_freq + diabetes + heart_disease +
                       cancer + cholesterol + urban_residence,
                     data = lifespan_df)
  
  surv_fit <- survfit(cox_model)
  return(list(model=cox_model, fit=surv_fit, data=lifespan_df))
}

# Creation-year model
predict_creation <- function() {
  creation_df <- data.frame(
    year = 2000:2020,
    inventions = c(5,7,6,8,10,12,14,13,15,17,19,21,23,22,24,26,27,28,30,31,33),
    tech_index = seq(50, 70, length.out=21),
    gdp = seq(1.2, 2.5, length.out=21),
    startups = c(10,12,15,14,18,20,22,23,25,28,30,32,35,37,39,40,42,44,46,48,50)
  )
  
  ts_inventions <- ts(creation_df$inventions, start=2000)
  fit_arima <- auto.arima(ts_inventions)
  forecast_inventions <- forecast(fit_arima, h=5)
  
  return(list(fit=fit_arima, forecast=forecast_inventions))
}
