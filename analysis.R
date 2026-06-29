# 1. Load the Excel toolbox and select dataset
library(readxl)
my_data <- read_excel(file.choose())

# 2. Run the OLS Regression
# (Replace 'Consumption' with your exact variable name if different)
model_1 <- lm(Consumption ~ GDP + INV_RATE, data = my_data)
summary(model_1)

# 3. Open the diagnostic toolboxes
library(car)
library(lmtest)
library(sandwich)

# Check for Multicollinearity
vif(model_1)

# White test for heteroscedasticity (matching EViews exactly)
bptest(model_1, ~ GDP*INV_RATE + I(GDP^2) + I(INV_RATE^2), data = my_data)

# Breusch-Godfrey test for autocorrelation (2 lags)
bgtest(model_1, order = 2, data = my_data)

# Robust standard errors (HC1) - matches EViews exactly
coeftest(model_1, vcov = vcovHC(model_1, type = "HC1"))