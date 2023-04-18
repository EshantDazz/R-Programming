m<-matrix(c(3:14),nrow = 4,byrow = T)
m

n<-matrix(c(3:14),nrow = 4)
n

rowNames<-c('r1','r2','r3','r4')
colNames<-c('c1','c2','c3')
b<-matrix(c(3:14),nrow = 4,dimnames = list(rowNames,colNames))
b


#accessing
b[2,]
b[,3]
b[1,3]
b[2,2]


#Computation
matrix1 <- matrix(c(3, 9, -1, 4, 2, 6), nrow = 2) 
matrix2 <- matrix(c(5, 2, 0, 9, 3, 4), nrow = 2) 
result <- matrix1 + matrix2 
cat("Addition of matrix1 and matrix2 is ",result)
print(matrix1)
print(matrix2)
print(result)
print(cat("Addition of matrix1 and matrix2 is ",result))

result<-matrix1-matrix2
result


#Multiplication and division
mat1 <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3, byrow = TRUE)
mat2 <- matrix(c(9, 8, 7, 6, 5, 4, 3, 2, 1), nrow = 3, ncol = 3, byrow = TRUE)
mat1
mat2

mat1*mat2
mat1%*%mat2
mat1/mat2

#det
det(mat1)

#t
mat1
t(mat1)

#dim
dim(mat1)

#nrow and ncol
nrow(mat1)
ncol(mat1)

#rownames and colnames
rownames(mat1)
colnames(mat1)

#diag
mat1
diag(mat1)
sum(diag(mat1))

#rbind and cbind
result <- rbind(mat1, mat2)
result

result <- cbind(mat1, mat2)
result
