#Creating Data Frames
emp.data <- data.frame( emp_id = c (1:5), emp_name = c("Rick","Dan","Michelle","Ryan","Gary"), salary = c(623.3,515.2,611.0,729.0,843.25), start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11", "2015-03-27")), stringsAsFactors = FALSE )
print(emp.data)


#The structure of the data frame can be seen by using str() function.
str(emp.data)

#Summary of Data in Data Frame
print(summary(emp.data))


# Extract Specific columns.
result <- data.frame(emp.data$emp_name,emp.data$salary)
print(result)

# Extract first two rows.
result <- emp.data[1:2,]
print(result)

#Extract 3rd and 5th row with 2nd and 4th column
result <- emp.data[c(3,5),c(2,4)] 
print(result)


#Add the "dept" coulmn. 
emp.data$dept <- c("IT","Operations","IT","HR","Finance") 
emp.data

#To add rows we need to use rbind
emp.data <- data.frame( emp_id = c (1:5), emp_name = c("Rick","Dan","Michelle","Ryan","Gary"), salary = c(623.3,515.2,611.0,729.0,843.25), start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11", "2015-03-27")), dept = c("IT","Operations","IT","HR","Finance"), stringsAsFactors = FALSE )
emp.newdata <- data.frame( emp_id = c (6:8), emp_name = c("Rasmi","Pranab","Tusar"), salary = c(578.0,722.5,632.8), start_date = as.Date(c("2013-05-21","2013-07-30","2014-06-17")), dept = c("IT","Operations","Fianance"), stringsAsFactors = FALSE )
emp.finaldata <- rbind(emp.data,emp.newdata) 
print(emp.finaldata)


#1. subset
df <- data.frame(
  name = c("Alice", "Bob", "Charlie", "Dave"),
  age = c(23, 29, 31, 27),
  gender = c("F", "M", "M", "M")
)

# select rows where age is greater than or equal to 30
subset(df, age >= 30)


#2. filter

#install.packages("dplyr")
library(dplyr)


df <- data.frame(
  name = c("Alice", "Bob", "Charlie", "Dave"),
  age = c(23, 29, 31, 27),
  gender = c("F", "M", "M", "M")
)

# filter rows where gender is "M"
filter(df, gender == "M")
df_filtered <- df %>% filter(gender=='M') %>% arrange(desc(age))
df_filtered


#3. select
# create a dataframe
df <- data.frame(
  name = c("Alice", "Bob", "Charlie", "Dave"),
  age = c(23, 29, 31, 27),
  gender = c("F", "M", "M", "M")
)

# select only the name and age columns
select(df, name, age)




# create a dataframe
df <- data.frame(
  name = c("Alice", "Bob", "Charlie", "Dave"),
  age = c(23, 29, 31, 27),
  gender = c("F", "M", "M", "M")
)

# add a new column using mutate()
df <- df %>% mutate(age_group = ifelse(age < 30, "Under 30", "30 and over"))
df

# sort the dataframe by age using arrange()
df <- df %>% arrange(age)
df
# rename the 'gender' column to 'sex' using rename()
df <- df %>% rename(sex = gender)
df

#pipe operator
df_filtered <- df %>% filter(age > 25) %>% arrange(desc(age))
df_filtered



#groupby and summarize
customer_orders <- data.frame(
  customer = c("Alice", "Bob", "Charlie", "Alice", "Bob", "Charlie"),
  product = c("Widget", "Gizmo", "Gizmo", "Widget", "Gizmo", "Widget"),
  amount = c(100, 50, 75, 150, 25, 200)
)
print(customer_orders)
customer_totals <- customer_orders %>% group_by(customer) %>% summarize(total_amount = sum(amount))
print(customer_totals)


# create a dataframe
df <- data.frame(
  name = c("Alice", "Bob", "Charlie", "Dave", "Emily", "Frank"),
  age = c(23, 29, 31, 27, 24, 32),
  gender = c("F", "M", "M", "M", "F", "M"),
  salary = c(50000, 60000, 80000, 55000, 45000, 70000)
)
print(df)
# group the dataframe by gender and compute the mean and standard deviation of salary for each group
df_grouped <- df %>% 
  group_by(gender) %>% 
  summarize(mean_salary = mean(salary), sd_salary = sd(salary))
print(df_grouped)


#Using merge function
df1 <- data.frame(
  name = c("Alice", "Bob", "Charlie", "Dave"),
  age = c(23, 29, 31, 27),
  gender = c("F", "M", "M", "M")
)
print(df1)
df2 <- data.frame(
  name = c("Alice", "Bob", "Charlie", "Dave"),
  salary = c(50000, 60000, 80000, 55000),
  department = c("HR", "IT", "Sales", "Marketing")
)
print(df2)
# merge the two dataframes based on the 'name' variable
df_merged <- merge(df1, df2, by = "name")
df_merged

#rbind and cbind

df1 <- data.frame(
  name = c("Alice", "Bob", "Charlie", "Dave"),
  age = c(23, 29, 31, 27),
  gender = c("F", "M", "M", "M")
)

df2 <- data.frame(
  name = c("Ellen", "Frank", "Grace", "Helen"),
  age = c(25, 34, 30, 28),
  gender = c("F", "M", "F", "F")
)

combined_cols <- cbind(df1, df2)
combined_rows <- rbind(df1, df2)
combined_cols
combined_rows
