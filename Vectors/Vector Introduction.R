##Vector
#like array in other coding languages(dynamic array in C++)

#index initialization starts from 1 instead of 0 in other programming langauges

# A single element of integer or double or character is actually a vector of single element in R programming langauge




#Creating vectors
a<-c(3,4,45,56) #this c function is used for making vector
a


#isnumeric
is.numeric(a)

#isinteger
is.integer(a)

typeof(a)


#isdouble
is.double(a)


v2<-c(23L,45L,56L)
is.numeric(v2)


#ischaracter
v3<-c("eshnat","das","hehe")
is.character(v3)



v3<-c("eshnat","das","hehe",7)
#the 7 will automatically become character
is.character(v3)



#1. seq() funciton like ':'
#2. rep() replicate



seq(1,15)
1:15

seq(1,15,2) #2 is the step size


rep(3,20) #3 will be stored 20 times inside a vector
rep(T,5)
rep(F,10)
