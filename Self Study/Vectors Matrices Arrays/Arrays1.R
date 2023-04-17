#arrays


#Creating arrays
v1<-c(6,34,78,76)
v2<-c(87,43,9,10)
a<-array(c(v1,v2),dim =c(4,4))
print(a)

b<-array(c(v1,v2),dim =c(2,8))
b
dim(b)

d<-array(c(1,2,3,4))
d
dim(d)

#Giving col names
vector1 <- c(5,9,3) 
vector2 <- c(10,11,12,13,14,15) 
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3") 
matrix.names <- c("Matrix1","Matrix2") 
result <- array(c(vector1,vector2),dim = c(3,3,2),dimnames = list(row.names,column.names, matrix.names)) 
print(result)


#accessing them
result[1,2,1]
result[,,2]
result[1,,]
result[,1,]

##Manupulating Arrays
v1<-c(5,6,7)
v2=c(32,45,34,23,76,45)
a1<-array(c(v1,v2),dim=c(3,3,2))
a1


m1<-a1[,,2]
m1

m2<-a1[,,1]
m2

result<-m1+m2
print(result)

typeof(m2)
class(m2)
class(c(1,2,3))



#Apply Function
#1
my_array <- array(c(1, 2, 3, 4, 5, 6), dim = c(2, 3))
my_array
apply(my_array, 2, mean)
apply(my_array, 1, mean)

#2
my_array <- array(c(1, 2, 3, 4, 5, 6, 7, 8, 9), dim = c(3, 3))
my_array
find_max <- function(x) {
  return(max(x))
}

apply(my_array, 1, find_max)

#3
my_array <- array(1:12, dim = c(2, 2, 3))
print(my_array)
apply(my_array, c(1, 2), sum)

#dim
dim(my_array)

#length
length(my_array)

#dimnames
dimnames(my_array)

vector1 <- c(5,9,3) 
vector2 <- c(10,11,12,13,14,15) 
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3") 
matrix.names <- c("Matrix1","Matrix2") 
result <- array(c(vector1,vector2),dim = c(3,3,2),dimnames = list(row.names,column.names, matrix.names)) 
print(result)

dimnames(result)

#t
a
t(a)

#sort
a<-array(c(23,45,65,45,43,34,32,4534,34,56),dim = c(5,2))
a
sort(a)


#unique
unique(a)

#which
arr <- array(data = c(10, 25, 30, 15, 20, 40, 5, 22, 18), dim = c(3, 3))
arr
indices <- which(arr > 20, arr.ind = TRUE)
indices
filtered_arr <- arr[indices]

cat("Original array:\n")
print(arr)
cat("Filtered array:\n")
print(filtered_arr)


#rbind and cbind
arr1 <- array(data = c(1:6), dim = c(2, 3))
arr2 <- array(data = c(7:12), dim = c(2, 3))

arr1
arr2

combined_rbind <- rbind(arr1, arr2)
combined_cbind <- cbind(arr1, arr2)

cat("Original array 1:\n")
print(arr1)
cat("Original array 2:\n")
print(arr2)
cat("Combined array using rbind():\n")
print(combined_rbind)
cat("Combined array using cbind():\n")
print(combined_cbind)
