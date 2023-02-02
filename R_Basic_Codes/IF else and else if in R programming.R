##If else

#rnorm is a random function in R programming

rnorm(1) #1 random number


rnorm(5) #5 random numbers

x<-rnorm(1)
if(x>1)
{
  a<-'Greater than 1'
}

#Removes the variable or object from R program
rm(a)



#IF-ELSE
if(1>2)
{
  print('yes')
}else. #THIS HAS TO BE IN THE SAME LINE AS THE CURLY BRACES
{
  print('NO')
}



#Nested IF
if(1>2){
  a<-'Yes'
}else{
  if(2>1){
    a<-'Jadu'
  }else{
    a<-'Padu'
  }
}



#If -else if-else
if(1>2){
  print('haha')
}else if(2>5){
  print('huhu')
}else{
  print('hihi')
}