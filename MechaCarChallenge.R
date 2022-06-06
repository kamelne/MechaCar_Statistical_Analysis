library(dplyr)
mpg_df <- read.csv('data/MechaCar_mpg.csv')
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD , mpg_df)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD , mpg_df)
)

suspension_data <- read.csv('data/Suspension_Coil.csv')
summary_table <- summarize(suspension_data, Mean = mean(PSI), Median = median(PSI), Variance = var(PSI),SD = sd(PSI))
lot_summary <- suspension_data %>%
  group_by(Manufacturing_Lot)%>%
  summarize( Mean = mean(PSI), Median = median(PSI), Variance = var(PSI),SD = sd(PSI))

