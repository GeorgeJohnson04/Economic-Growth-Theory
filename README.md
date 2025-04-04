# Infant Mortality and GDP Analysis

## Overview
This project analyzes the relationship between GDP per capita and under-five mortality rates using historical data from 1950 and 2018. It includes scatterplots, regression models, and statistical analysis to understand trends over time.

## Data Source
The data used in this analysis is imported from `Georges Project Data.csv`, which includes GDP per capita, under-five mortality rates, years of schooling, life expectancy, and urbanization metrics for multiple years.

## Analysis and Interpretation
### Scatterplots
The scatterplots below illustrate the relationship between GDP per capita and under-five mortality rate for the years **1950** and **2018**.

#### **2018 Infant Mortality vs. GDP**
<p align="center">
  <img src="2018%20Infant%20MR%20vs%20GDP.png" width="600">
</p>

- There is a strong negative correlation between GDP per capita and under-five mortality rate.
- In 2018, most countries have relatively low under-five mortality rates, with a few outliers.
- The spread of GDP per capita is significantly higher, indicating economic growth over time.

#### **1950 Infant Mortality vs. GDP**
<p align="center">
  <img src="1950%20Infant%20MR%20vs%20GDP.png" width="600">
</p>

- The negative relationship is also present but appears steeper, suggesting that in 1950, improvements in mortality had a stronger relative impact on GDP per capita.
- There is a wider range of under-five mortality rates (up to 40 per 1,000), reflecting poorer health outcomes compared to 2018.
- GDP per capita values are lower across most countries compared to 2018.

### Regression Models
Three regression models were estimated to analyze the impact of GDP and other variables on under-five mortality rates:

<p align="center">
  <img src="Final%20Table%20analysis.png" width="800">
</p>

#### **Interpretation of Regression Results**
- **Model 1**: Examines under-five mortality rate as a function of GDP per capita. The coefficient for GDP per capita is negative and statistically significant, indicating that higher GDP is associated with lower under-five mortality rates. The R² value of 0.099 suggests that GDP alone explains about 9.9% of the variation in under-five mortality.

- **Model 2**: Adds years of schooling as an additional explanatory variable. Education has a small but positive effect, and GDP remains negatively significant. The R² increases to 0.255, suggesting better model fit.

- **Model 3**: Further includes life expectancy and urbanization. Life expectancy has a strong negative effect on under-five mortality, while urbanization also reduces mortality rates. The R² improves to 0.392, showing that these additional variables provide better explanatory power.

- Full analysis can be seen in the PDF provided of the final project

## Code Execution
The analysis was performed using Stata with the following steps:
1. Importing data.
2. Generating scatterplots for 1950 and 2018.
3. Running regression models and storing estimates.
4. Exporting results to a CSV table.

## Repository Structure
```
├── Images
│   ├── 1950 Infant MR vs GDP.png
│   ├── 2018 Infant MR vs GDP.png
│   ├── Final Table analysis.png
├── Data
│   ├── Georges Project Data.csv
├── Analysis
│   ├── Stata_Code.do
│   ├── table.csv
├── README.md
```

## How to Use
- Run the Stata script (`Infant Mortality Project George J.do`) to reproduce the analysis.
- View the generated regression table (`Georges Project Data.csv`) for detailed statistical outputs.
- Refer to the images (`1950 Infant MR vs GDP.png`, `2018 Infant MR vs GDP.png`, and `Final Table analysis.png`) for visual representation of the relationship between GDP per capita and under-five mortality rate.

## Conclusion
The analysis demonstrates significant improvements in global economic and health conditions between 1950 and 2018. The strong negative correlation suggests that economic growth is associated with lower under-five mortality rates, with additional factors such as education, life expectancy, and urbanization further influencing outcomes.
