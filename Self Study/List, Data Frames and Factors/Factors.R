#Creating factors and levelling them
data <- c("East","West","East","North","North","East","West","West","West","East","North") 
data

print(data)
print(is.factor(data)) 

factor_data <- factor(data) 
factor_data
print(is.factor(factor_data))




#On creating any data frame with a column 
#of text data, R treats the text column 
#as categorical data and creates factors on it.

#Creating vectors for data frame
height <- c(132,151,162,139,166,147,122) 
weight <- c(48,49,66,53,67,52,40) 
gender <- c("male","male","female","female","male","female","male") 
height
weight
gender

input_data <- data.frame(height,weight,gender) 
print(input_data) 
print(is.factor(input_data$gender)) 
print(is.factor(input_data$weight)) 
print(input_data$gender)

#stringsAsFactors = TRUE
input_data <- data.frame(height, weight, gender, stringsAsFactors = TRUE)
input_data

print(is.factor(input_data$gender)) 
print(input_data$gender)


#Changing the order of levels
data <- c("East","West","East","North","North","East","West", "West","West","East","North")
print(data)
factor_data <- factor(data) 
factor_data

new_order_data <- factor(factor_data,levels = c("East","West","North")) 
new_order_data


#gl : generating factor levels
#gl(n, k, labels) Following is the description of the parameters used −
#n is a integer giving the number of levels.
#k is a integer giving the number of replications.
#labels is a vector of labels for the resulting factor levels.

v <- gl(3, 4, labels = c("Tampa", "Seattle","Boston"))
print(v)


#levels and nlevels
print(new_order_data)
levels(new_order_data)
nlevels(new_order_data)

#table()
table(new_order_data)
