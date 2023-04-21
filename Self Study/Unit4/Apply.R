
#The apply() family of functions in R is a powerful set of functions that allows you to apply a function to a matrix, array, or data frame by row or column. The functions in the apply() family are:

#apply() - apply a function to a matrix or array, by row or column
#lapply() - apply a function to each element of a list and return a list
#sapply() - apply a function to each element of a list and simplify the results into a vector, matrix or array
#tapply() - apply a function to subsets of a vector or data frame, based on one or more factors
#mapply() - apply a function to multiple vectors or lists



mat <- matrix(1:9, nrow = 3, ncol = 3)
# Apply the sum function to each row of the matrix
row_sums <- apply(mat, 1, sum)
# Apply the sum function to each column of the matrix
col_sums <- apply(mat, 2, sum)
row_sums<-apply(mat,2,sum)
print(col_sums)
print(row_sums)



# Create a list of vectors
list_of_vectors <- list(a = c(1,2,3), b = c(4,5,6), c = c(7,8,9))
list_of_vectors
# Apply the mean function to each vector in the list
means <- lapply(list_of_vectors, mean)
means


# Create a list of vectors
list_of_vectors <- list(a = c(1,2,3), b = c(4,5,6), c = c(7,8,9))
list_of_vectors
# Apply the mean function to each vector in the list
means <- sapply(list_of_vectors, mean)
means
is.vector(means)
# Simplify the list of vectors into a matrix
matrix_of_means <- matrix(means, nrow = 1, ncol = 3)
matrix_of_means


# Create a data frame
df <- data.frame(x = c(1, 2, 3, 4, 5), y = c(6, 7, 8, 9, 10), group = c("A", "A", "B", "B", "B"))
df
# Apply the mean function to the "x" column of the data frame, grouped by the "group" column
means <- tapply(df$x, df$group, mean)
means
is.array(means)
class(means)

# Define a function that takes two arguments and returns their sum
my_function <- function(x, y) {
  return(x + y)
}
# Apply the my_function to two vectors
result <- mapply(my_function, c(1, 2, 3), c(4, 5, 6))
result
