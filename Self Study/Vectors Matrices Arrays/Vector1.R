##Vectors


#In R, vectors are one-dimensional
#arrays that can hold multiple elements
#of the same data type, such as numeric, character, or logical.



# Create a numeric vector
my_nums <- c(1, 2, 3, 4, 5)

# Create a character vector
my_chars <- c("apple", "banana", "cherry")

# Create a logical vector
my_bools <- c(TRUE, FALSE, TRUE)

# Generate a sequence of numbers
my_seq <- seq(1, 10, by = 2)

#Creating with :
h<-3:10
h

#class and typeof
class(h)
typeof(h)
l<-c(1.3,5.6)
class(l)
typeof(l)



# Repeat an element to create a vector
my_reps <- rep(0, times = 5)


#Length Function
l<-length(my_bools)

#max and min
max(my_nums )
min(my_nums)

#sum
sum(my_nums)

#mean median and sd
mean(my_nums)
median(my_nums)
sd(my_nums)

#sort
sort(my_nums)
#reverse
rev(sort(my_nums))

#unique
unique(my_nums)
unique(my_reps)


# which
my_vector <- c(1, 2, 3, 4, 5)
which(my_vector > 3)

#subset
names_vector <- c("Alice", "Bob", "Charlie", "David", "Emily")
subset(names_vector, grepl("^A|^D", names_vector))

#paste
my_strings <- c("The", "quick", "brown", "fox", "jumps", "over", "the", "lazy", "dog.")
paste(my_strings, collapse = " ")

#as.numeric
my_strings <- c("1", "2", "3", "4", "5")
as.numeric(my_strings)

#as.character
my_numbers <- c(1, 2, 3, 4, 5)
as.character(my_numbers)

#as.logical
my_values <- c(0, 1, 2, 3, 4)
as.logical(my_values)


#is.vector
is.vector(my_values)
is.numeric(my_values)

#as.factor
my_vector <- c("red", "blue", "green", "red", "yellow", "blue")
my_factor <- as.factor(my_vector)
print(levels(my_factor))

#append
my_vector <- c(1, 2, 3)
my_vector <- append(my_vector, 4)
print(my_vector)




#Indexing with Integer vectors
v<-seq(1,4,length.out=8)
#Like Linespace
v
v[2]


#indexing with characters
v<-c("Eshant"=50L,"Jayesh"=65L,"Pranjal"=63L)
v
class(v)
typeof(v)
v["Eshant"]
v[1]


#Combining Vectors
a<-c(1L,2L,3L)
b<-c(5L,7L,32L)
c<-c(a,b)
c

#Arithmetic
a+b
a-b
a*b
a/b
b%%a
a^b
Map(`^`, a, b)



#The Map() function in R is used to apply a function 
#to corresponding elements of one or more vectors or lists. 
#It returns a list where each element is the result of 
#applying the function to the corresponding elements of the
#input vectors or lists.



# Create two vectors
vector1 <- c(1, 2, 3)
vector2 <- c(4, 5, 6)

# Define a function to add two numbers
my_function <- function(x, y) {
  x + y
}
# Apply the function to corresponding elements of the two vectors using Map()
result <- Map(my_function, vector1, vector2)
print(result)



#Numeric Index
vector1 <- c(1, 10, 3)
vector1[-2]
vector1[1]

#Duplicate Index
vector1[c(1,2,2,2)]
is.vector(vector1[c(1,2,2,2)])
lp=vector1[c(1,2,2,2,3,3,3,3,1,2)]
lp

lp<-lp[2:5]
lp


#Out of Index
kp=vector1[c(1,45,2,2,2,3,3,3,3,1,2,454)]
kp
