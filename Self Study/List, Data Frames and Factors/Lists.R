# Create a list

#In R, a list is a collection of 
#elements that can be of different types such as vectors, 
#matrices, data frames, or even other lists. Lists are 
#very useful when you need 
#to organize and store different types of data structures together.


my_list <- list(element1 = 42, element2 = "hello", element3 = TRUE)
print(my_list)

l<-list(1,45,'eshant',55,TRUE)
l

# Accessing elements in a list
print(my_list$element1)  # 42
print(my_list$element2)  # "hello"
print(my_list$element3)  # TRUE

# Alternatively, you can use double square brackets to access elements
print(my_list[[1]])  # 42
print(my_list[[2]])  # "hello"
print(my_list[[3]])  # TRUE

# You can also access elements using integer indices
print(my_list[[1]])  # 42
print(my_list[[2]])  # "hello"
print(my_list[[3]])  # TRUE

# Adding elements to a list
my_list$element4 <- c(1, 2, 3)  # Adding a numeric vector as element4
my_list[["element5"]] <- "world"  # Adding a character string as element5
print(my_list)

# Removing elements from a list
my_list$element3 <- NULL  # Removing element3 from the list
print(my_list)



#More Variations of List
my_list <- list(a = 1:5, b = c("apple", "banana", "orange"), c = matrix(1:6, nrow = 2))
my_list



my_list$a
typeof(my_list$a)
class(my_list$a)
is.vector(my_list$a)

# access the first element of the list
my_list$a
# access the second element of the list
my_list[["b"]]
# access the second element of the first element of the list
my_list$a[2]



#Appending List
#1.
list1 <- list(a = 1, b = 2)
list2 <- list(c = "apple", d = "banana")

combined_list <- c(list1, list2)

combined_list

#2.
my_list <- list(a = 1, b = 2)
my_list <- append(my_list, list(c = "apple"))

my_list

#3.
my_list <- list(a = 1, b = 2)
my_list$c <- "apple"

my_list



#[[]] and $ are same
my_list$a
my_list[['a']]


#length
length(my_list)

#names
names(my_list)


#Default names given are 1,2,3
o<-list(1,2,3)
o

n<-list(1,2,3,'k'=0)
n


print(my_list)
my_list <- append(my_list, list(d = data.frame(x = c(1, 2, 3), y = c(4, 5, 6))))
my_list


#str
str(my_list)

#islist
is.list(my_list)


#lengths
lengths(my_list)
my_list <- list(a = 1:5, b = c("apple", "banana", "orange"), c = matrix(1:6, nrow = 2))
my_list
lengths(my_list)


#lapply
my_list <- list(a = 1, b = 2)
mylist
lapply(my_list, mean)

#subset(): This function subsets a list based on a logical condition.
my_list <- list(a = 1:5, b = c("apple", "banana", "orange"), c = matrix(1:6, nrow = 2))
print(my_list)
subset(my_list,my_list$a>3)

a<-list(1,3,4,5,10,7)
a
aa<-subset(a,a>3)
aa
is.list(aa)


#grep(): This function searches for a pattern in the names or values of a list.
#Example: grep("a", names(my_list), value = TRUE)

#any(): This function returns TRUE if any element in a list is TRUE.
#Example: any(my_list$a > 3)

#Split
fruit_prices <- list(apples = c(1.50, 1.75, 1.25),
                     bananas = c(0.75, 0.80, 0.70),
                     oranges = c(1.00, 1.10, 0.95),
                     grapes = c(2.50, 2.70, 2.30))

# Split the list into sub-lists based on the first letter of each fruit name
fruit_split <- split(fruit_prices, substr(names(fruit_prices), 1, 1))

# View the sub-lists
fruit_split