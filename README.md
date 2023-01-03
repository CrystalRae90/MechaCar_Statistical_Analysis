# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

Summary Results for the linear regression can be shown below: 

![linear_regression.PNG]("linear_regression.PNG")

-Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Looking at the Pr(>|t|)column for each variable, we can determine which ones are statistically significant. Using .05 as a threshold, we can see that the vehicle length, and ground clearance are significatntly smaller than our threshold. This comparison means taht they have a statistically significant relationship with the mpg variable. 

- Is the slope of the linear model considered to be zero? Why or why not?

The pvalue shown from the model is shown to be 5.35e-11. This is much smaller than our assumed significance level of 0.05%. Therefore we can state there is enough evidence to reject the null hypothesis. This means that the slope our linear model is not zero. 


Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

Given that the r squared value is over 0.7 and the pvalue is under our significance level, it could be concluded that this is a good predictive model for the MechaCar prototypes. 

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Analyzing the data as a combined set, we get the below summary:  
![all_lots.PNG]("all_lots.PNG")

The variance as a complete data set shows that the variance is only 62.29 which below the threshold of 100 pounds per square inch. This means that the current manufacturing data meets this design spec in total. 

Analyzing the data by lot, we get the below summary:

![by_lots.PNG]("by_lots.PNG")

The variance by each lot however shows that lot 3 individually does not meet that spec. It has a variance of 170 which is higher than the threshold. Lots 1 and 2 however do meet the design spec at 0.98 and 7.47 lbs per square inch respectively.

## T-Tests on Suspension Coils

The t-tests were performed together and individually for each lot. 

Looking at the t-test for all lots, we can see below that the p-value was 0.06028. Using our threshold of 0.05, we can say that this is not statistically significant and we can accept our null hypothesis. 

![ttest_all.PNG]("ttest_all.PNG")

For lots 1 and 2 , as shown below, we see that our P value is 1 and 0.6072 respectively, which also shows that it is not statistically significant and we can accept our null hypotheses. 
![ttest_1.PNG]("ttest_1.PNG")
![ttest_2.PNG]("ttest_2.PNG")

However, we see that the pvalue for lot 3 is 0.04168 which means that it is statistically significant. We thus must reject our null hypothesis that they are similar to the mean population of 1500 lbs per square inch. 

![ttest_3.PNG]("ttest_3.PNG")


## Study Design: MechaCar vs Competition

