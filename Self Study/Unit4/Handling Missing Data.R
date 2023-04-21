df <- data.frame(
  x = c(1, 2, NA, 4, 5),
  y = c(NA, 2, 3, 4, NA)
)
df


# count the number of missing values for each column
colSums(is.na(df))




Remove missing values: If the number of missing values 
is relatively small compared to the total number of 
observations, you may consider removing the observationswith missing values using the 
na.omit() or complete.cases() functions. For example:
# remove rows with missing values
df_complete <- na.omit(df)
df_complete
#or
df_complete <- df[complete.cases(df), ]
df_complete


#install.packages('imputeTS')
df <- data.frame(
  x = c(1, 2, NA, 4, 5),
  y = c(NA, 2, 3, 4, NA)
)
df
library(imputeTS)
df  
df_imputed <- na.mean(df)
df_imputed
# replace missing values with a new category "Unknown"
df_new <- df
df_new[is.na(df_new)] <- "Unknown"
df_new



library(dplyr)
library(tidyr)


install.packages("zoo")
library(zoo)
df_median2 <- na.aggregate(df, FUN = median)
df_median2
df_mean<-na.aggregate(df,FUN=mean)
df_mean
df_mode<-na.aggregate(df,FUN=mode)
df_mode
