# MechaCar_Statistical_Analysis

AutosRUs' newest protype, the MechaCar, is having production troubles and affecting the manufacturing team's progress.
Jeremy has been tasked by upper management to review the production data for insights that may help the manufacturing team.

### The following tasks have been identified to do:

1.	Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
2.	Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
3.	Run t-tests to determine if the manufacturing lots are statistically different from the mean population
4.	Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

# Results

## Linear Regression to Predict MPG

![Del1_Coefficients](https://user-images.githubusercontent.com/78666055/121778002-d7a3c580-cb62-11eb-8b5c-aeedf082f537.png)
![Del1_p_and_r_squared_values](https://user-images.githubusercontent.com/78666055/121778007-dd99a680-cb62-11eb-951b-f23938d39622.png)

Since none of the coefficients or M value equals zero (0), the Ha hypothesis is true for all and thus there are no non-random amount of variance to the MPG values.
<br>
<br>
The p-value (5.35e-11) is less that the assumed significance level of 0.05%. Thus there is sufficient evidence to reject the null hypothesis and state that the slope of the linear model is NOT zero.
<br>
<br>
The r-squared value of 0.7149 or approximately 71% reveals the percentage of the data that fit the regression model. Although  this may be an acceptable prediction, a higher r-squared value is desirable.


## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100. The total_summary variance shows a variance of 62.29 which would suggest specifications are met. However, LOT 3 has a variance of 170 which does not meet the specs.


## T-Tests on Suspension Coils

Here the One Sample t-tests were performed to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.
<br>
<br>
The overall t-test: p-value of 0.06 is greater then 0.05 and thus there is not sufficient evidence to reject the null hypothesis.
The t-tests by lots shows lot 1 and 2 as not having sufficient evidence to reject the null hypothesis. However, lot 3 has a p-value of 0.04 which is less than 0.05 and therefore can be rejected.


## Study Design: MechaCar vs Competition

Fuel efficiency, Safety Rating, Size, Maintenance Costs are all key metrics when considering buying a car. However, the Cost or price one pays for the car becomes the most important thing.
<br>
<br>
The Null Hypothesis is there is no statistical difference between the MechaCar and its competitors.
The Alternative Hypothesis is there is statistical difference between the MechaCar and its competitors.
<br>
<br>
A two-way ANOVA test can be used to test the mean of the Selling Price with independent variable: MPG and Size.
<br>
<br>
Data (Selling price, MPG, vehicle size) from comparable vehicles in the same class would be required.


 
