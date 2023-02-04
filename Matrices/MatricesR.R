##Matrices

?rbind
?matrix

data<-1:20
a<-matrix(data,4,5)  #4 rows and 5 columns 4*5=20
a


a<-matrix(data,4,5,byrow = T) 
a
a[2,4]


#lets use rbind now
r1<-c("Data sciennce","is","fun")
r2<-c('Eshant','is','happy')
r3<-c(1,2,4)

C<-rbind(r1,r2,r3)
C

rm(r1,r2,r3)


#cbind
c1<-1:5
c2<--1:-5
d=cbind(c1,c2)
d

rm(c1,c2)
