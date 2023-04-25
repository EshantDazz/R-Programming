library(dplyr)

#filter(): Selects rows of data based on one or more conditions.
#select(): Selects columns of data based on column names or column indices.
#arrange(): Sorts rows of data based on one or more columns.
#mutate(): Adds new columns to a data frame based on calculations using existing columns.
#group_by(): Groups the data by one or more columns, allowing for operations to be performed within each group.
#summarize(): Aggregates data within each group, computing summary statistics such as mean, median, or count.

#dplyr also provides several helper functions that are useful for working with data frames:

#rename(): Renames columns of a data frame.
#distinct(): Selects unique rows of a data frame.
#slice(): Selects rows of a data frame by index.
#sample_n() and sample_frac(): Randomly samples rows from a data frame.

# Load a sample data set
data(mtcars)
data


#Srring the first 5 rows
head(mtcars)

# Filter to select only cars with 6 cylinders
six_cylinders <- mtcars %>%
  filter(cyl == 6)

six_cylinders
#Multiple Filters
six_cyl_high_hp <- mtcars %>%
  filter(cyl == 6) %>%
  filter(hp > 100)
six_cyl_high_hp

# Select only the columns we're interested in
selected_columns <- six_cylinders %>%
  select(mpg, hp, wt)
selected_columns


# Sort the data by weight
sorted_data <- selected_columns %>%
  arrange(wt)
sorted_data
#Arranging on more than 2 columns
sorted_data <- selected_columns %>%
  arrange(wt, mpg)
sorted_data


# Add a new column for horsepower per ton
new_data <- sorted_data %>%
  mutate(hp_per_ton = hp / (wt * 0.453592))
new_data

new_data



library(ggplot2)
data(mpg)


head(mpg)


# Group the data by class and manufacturer
mpg_grouped <- mpg %>% group_by(class, manufacturer)
mpg_grouped

mpg_avg_hwy <- mpg_grouped %>% summarize(avg_hwy = mean(hwy))
mpg_avg_hwy



#rename
df <- data.frame(id = 1:3, name = c("John", "Jane", "Bob"), age = c(25, 30, 35))
df
# change the name of the 'age' column to 'years'
df_renamed <- rename(df, years = age)
df_renamed



#distinct
df <- data.frame(id = c(1, 1, 2, 3), name = c("John", "John", "Jane", "Bob"))
df
# select only the unique rows
df_unique <- distinct(df)
df_unique



# slice
df <- data.frame(id = 1:10, name = c("John", "Jane", "Bob", "Alice", "Tom", "Sue", "Bill", "Ted", "Kate", "Dan"))
df
# randomly sample three rows
df_sampled <- sample_n(df, 3)
df_sampled
# randomly sample 30% of the rows
df_sampled_frac <- sample_frac(df, 0.3)
df_sampled_frac



#Slice
df <- data.frame(id = 1:5, name = c("John", "Jane", "Bob", "Alice", "Tom"))
df


# select the first three rows
df_subset <- slice(df, 1:3)
df_subset


# select rows 2, 4, and 5
df_subset <- slice(df, c(2, 4, 5))
df_subset


# select rows where 'id' is greater than 2
df_subset <- slice(df, which(df$id > 2))
df_subset


# select the top 2 rows
df_subset <- slice_head(df, n = 2)
# select the bottom 2 rows
df_subset <- slice_tail(df, n = 2)


#Slicing Both Rows and Columns
# create a sample data frame
df <- data.frame(id = 1:5, name = c("John", "Jane", "Bob", "Alice", "Tom"), age = c(25, 30, 35, 40, 45))
# select the first three rows and the 'name' and 'age' columns
df_subset <- df[1:3, c("name", "age")]
df_subset
