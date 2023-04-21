#data filters
library(dplyr)
df <- data.frame(
  name = c("Alice", "Bob", "Charlie", "Dave"),
  age = c(20, 15, 25, 30),
  gender = c("F", "M", "M", "M")
)
df
# filter rows where age >= 18
filtered_df <- filter(df, age >= 18)
# print filtered data frame
print(filtered_df)



filtered_df <- filter(df, age >= 18 & age <= 25)
# print filtered data frame
print(filtered_df)

de <- data.frame(
  x = c(1, 2, 3, 4),
  y = c(5, 6, 7, 8)
)


df
de
#Data Filters
filter(df,age>=18 & gender=='F')
select(df,name,gender)
arrange(df,age)
arrange(df,desc(age))
mutate(de,'hello'=x+y)
group_by(df,name)
summarize(df, mean_b = mean(age))


#More example on groupby and summarize

df <- data.frame(
  group = c("A", "A", "B", "B"),
  x = c(1, 2, 3, 4),
  y = c(5, 6, 7, 8)
)
df
# group data frame by group column
grouped_df <- group_by(df, group)
grouped_df
# summarize data by group, calculating mean of x and y for each group
summary_df <- summarize(grouped_df, 
                        mean_x = mean(x),
                        mean_y = mean(y))

# print summary data frame
print(summary_df)


summary_df <- summarize(df, 
                        mean_x = mean(x),
                        mean_y = mean(y))
summary_df
#this is the wrong approach