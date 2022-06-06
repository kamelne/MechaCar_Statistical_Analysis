# MechaCar Statistical Analysis
## Overview 
Using R to conduct statistical analysis on AutosRUs' new prototype the Mechacar. 

## Linear Regression to Predict MPG

The linear regress formula was found using the R functions lm() and summary(lm())
![D1_lm](https://user-images.githubusercontent.com/57120024/172223854-302e27a3-bbbd-46a2-bf06-79bf8d36c1be.PNG)

mpg = (6.267)vehicle_length + (0.0012)vehicle_weight + (0.0688)spoiler_angle + (3.546)ground_clearance + (-3.411)AWD + (-104.0)

![D1_summary_lm](https://user-images.githubusercontent.com/57120024/172223866-cf3971fe-cf79-4a84-8c79-3f53001b1848.PNG)

From the summary function we see that length and ground clearance provide a non-raondom amount of variance and have the most significant impact on MPG. This can be seen by having the lowest values in the Pr(>|t|) column. 

The linear model has a p-Value of 5.35e-11 is well below the assumed signigicance level of 0.05, indicating that that slope of the modle is not zero. The R-Value is 0.72 which show a moderate to strong correlation and is good at predicting mpg. 

## Summary Statistics on Suspension Coils

The total summary of all suspension coils manufactured does meat the variance requirement of not exceeding 100 PSI. But when looking at each lot individually Lot 3 exceed the variance required significantly. The lot summary also shows that the variance has increased dramatically between lots and there may be a manufacturing issue that needs to be examined. 

![total_summary](https://user-images.githubusercontent.com/57120024/172225276-5f05e45c-aba1-4cc7-b39d-a25536b48a73.PNG)

![lot_summary](https://user-images.githubusercontent.com/57120024/172225254-ef2fd8fd-c6dd-426d-8669-3562302a8d26.PNG)

## T-Tests on Suspension Coils
Using the following hypotheses:

  - H0 : There is no statistical difference between the observed sample mean and its presumed population mean.
  - Ha : There is a statistical difference between the observed sample mean and its presumed population mean.

Assuming our significance level is 0.05 percent, we would not reject the null hypothesis and state that the means are statistically similar in the following t-tests:
  - t-test for all
  - t-test for Lot1
  - t-test for Lot2


![t-test_all](https://user-images.githubusercontent.com/57120024/172225730-1eec3f40-ded5-4f53-b84b-c3d84e521ba8.PNG)

![t-test_Lot1](https://user-images.githubusercontent.com/57120024/172225735-bfcb6d42-7f9b-4361-86e7-88e16af869a3.PNG)

![t-test_Lot2](https://user-images.githubusercontent.com/57120024/172225739-dd5a0098-c050-4cd3-9d28-f52e7dcb3ada.PNG)

We would reject the null hypothesis and say the means re statistically different in Lot3. 

![t-test_Lot3](https://user-images.githubusercontent.com/57120024/172225754-d2a236cb-b125-43aa-a7c2-c7e5e2992e37.PNG)

## Study Design: MechaCar vs Competition
Measured Metrics: 
  - Horse power (independent variable)
  - Engine displacement(L)  (independent variable)
  - Vehicle weight(lb) (independent variable)
  - Drivetrain( RWD/AWD/FWD) (independent variable)
  - 0-60 time(s)  (independent variable)
  - Lateral Acceleration(g or m/s^2)  (dependent variable)

Hypothesis: Null and Alternative
After determining which factors are key for the MechaCar's genre:
  - Null Hypothesis (Ho): MechaCar provides correct levels of lateral acceleration based on performance metrics
  - Alternative Hypothesis (Ha): MechaCar does NOT provide correct levels of lateral acceleration based on performance metrics

Using a Multiple Linear Regression to determine which metric has the highest correlation and impact on lateral acceleration. The data need ton run the statistical test is data mentioned above on the top selling performance and sports cars from the last 3 years. 


