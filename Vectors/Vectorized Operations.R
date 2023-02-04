x<-rnorm(5)
x


#R programming loop
for (i in x){
  print(i)
}

#Conventional Programming Loop
for(j in 1:5){
  print(x[j])
}

#-------------------

n<-100
a<-rnorm(n)
b<-rnorm(n)

#Vectorized Approach
c<-a*b. #this is much faster 

#De-vectorized Approach
d<-rep(NA,n)
for (i in 1:n){
  d[i]<-a[i]*b[i]
}
