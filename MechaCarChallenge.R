#Delivery 1
# Load tidyverse
library(dplyr)

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


total_summary <- Susp_Coil_df %>% summarize(Mean=mean(PSI), 
                Median=median(PSI), Variance=var(PSI), 
                SD=sd(PSI), .groups = 'keep')
total_summary


