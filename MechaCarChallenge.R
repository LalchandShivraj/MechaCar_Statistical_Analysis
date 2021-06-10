#Delivery 1
# Load tidyverse
library(tidyverse)

# Import and read in MechaCar_mpg.csv
mpg_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
     ground_clearance + AWD, data=mpg_df)

# Determine the p-value and r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle +
             ground_clearance + AWD, data=mpg_df))

#Delivery 2
# Import and read Suspension_Coil.csv
Susp_Coil_df <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# get the mean, median, variance and std of the suspension coil's PSI
total_summary <- Susp_Coil_df %>% summarize(Mean=mean(PSI), 
                Median=median(PSI), Variance=var(PSI), 
                SD=sd(PSI), .groups = 'keep')
total_summary

# get stats on manufacturing lot groups
lot_summary <- Susp_Coil_df %>% group_by(Manufacturing_Lot) %>% 
               summarize(mean(PSI),median(PSI),var(PSI), sd(PSI), .groups= 'keep')
lot_summary

# use t.test() to analyse PSI across manufacturing lots
t.test(Susp_Coil_df$PSI,mu=1500)

# use subset to check each lot's PSI stats is different from the population mean (1,500)
t.test(subset(Susp_Coil_df$PSI,Susp_Coil_df$Manufacturing_Lot=='Lot1'),mu=1500)
t.test(subset(Susp_Coil_df$PSI,Susp_Coil_df$Manufacturing_Lot=='Lot2'),mu=1500)
t.test(subset(Susp_Coil_df$PSI,Susp_Coil_df$Manufacturing_Lot=='Lot3'),mu=1500)



