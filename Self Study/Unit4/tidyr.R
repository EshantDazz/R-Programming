#The sole purpose of the tidyr package is to simplify the 
#process of creating tidy data. Tidy data describes a standard way of 
#storing data that is used wherever possible throughout the tidyverse.


library('tidyverse')


n = 10
# creating a data frame
tidy_dataframe = data.frame(
  S.No = c(1:n),
  Group.1 = c(23, 345, 76, 212, 88,
              199, 72, 35, 90, 265),
  Group.2 = c(117, 89, 66, 334, 90,
              101, 178, 233, 45, 200),
  Group.3 = c(29, 101, 239, 289, 176,
              320, 89, 109, 199, 56))

# print the elements of the data frame
tidy_dataframe




#tidyr package provides various important
#functions that can be used for Data Cleaning. 




#1.    gather() function: It takes multiple columns and gathers 
#them into key-value pairs. 

# Create example data
df <- data.frame(ID = 1:5,
                 height = c(165, 170, 175, 180, 185),
                 weight = c(60, 70, 80, 90, 100))
df
# Use gather() to reshape the data
df_gathered <- gather(df, key = "variable", value = "measurement", height, weight)

# Print the resulting dataset
print(df_gathered)



#2. Seperate Function It converts longer data to a wider format. 
dates <- c("2022-01-01", "2022-02-01", "2022-03-01")
df <- data.frame(date = dates)
df

df_split <- separate(df, col = date, into = c("year", "month", "day"), sep = "-")

# Print the resulting dataset
print(df_split)


#3. Unite function:  It merges two columns into one column. 
#The unite() function is a convenience function to
#paste together multiple variable values into one.
df <- data.frame(year = c(2022, 2022, 2022),
                 month = c("01", "02", "03"),
                 day = c("01", "15", "31"))
df
# Use unite() to combine the year, month, and day columns into a single date column
df_united <- unite(df, col = "date", year, month, day, sep = "-")

# Print the resulting dataset
print(df_united)


#4. spread:  It helps in reshaping a longer format to 
#a wider format. 
df <- data.frame(ID = c(1, 1, 2, 2, 3, 3),
                 course = c("Math", "Science", "Math", "English", "Science", "English"),
                 grade = c(85, 90, 75, 80, 95, 85))

df
# Use spread() to reshape the data
df_spread <- spread(df, key = course, value = grade)
# Print the resulting dataset
print(df_spread)



