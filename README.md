# Determinants of Private Consumption in Pakistan (1980–2021)

## Overview
An empirical investigation into the macroeconomic determinants of private consumption in Pakistan, utilizing time-series econometric modeling to identify key drivers and correct for statistical violations.

## Data
- **Source:** State Bank of Pakistan (SBP) Annual Report
- **Period:** 1980–2021 (42 annual observations)
- **Variables:** Private Consumption, GDP, Gross Fixed Capital Formation

## Methodology
1. OLS estimation baseline
2. Multicollinearity diagnosis (VIF > 4,000 detected)
3. Ratio transformation: `INV_RATE = GFCF/GDP`
4. White test for heteroscedasticity
5. HC1 robust standard errors applied
6. Breusch-Godfrey test confirmed no autocorrelation

## Software & Tools
- **EViews:** Primary estimation and diagnostic testing
- **R:** Cross-validation using `lmtest`, `sandwich`, and `car` packages

## Repository Files
- `Pakistan_Consumption_Report.docx` — Full formal analysis report
- `analysis.R` — Complete R cross-validation script
- `Consumption_Data.xlsx` — Raw SBP dataset
