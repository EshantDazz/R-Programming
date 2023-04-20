#cat and paste
typeof(seq(23:55))
is.vector(seq(23:55))


new.function <- function(a){
  for(i in 1:a) { 
    b <- i^2
    print(b) 
  } 
}
 
new.function(6)



new.function <- function() {
  for(i in 1:5) {
    print(i^2) 
  } 
} 
new.function()


new.function <- function(a,b,c) { 
  result <- a * b + c 
  print(result) 
} 
new.function(5,3,11)

new.function(a = 11, c = 5, b = 3)


# Create a function with arguments. 
new.function <- function(a = 3, b = 6) { 
  result <- a * b 
  print(result) } 

new.function() 
new.function(9,5)


# Create a function with arguments. Lazy Evaluation
new.function <- function(a, b) { 
  print(a^2) 
  print(a) 
  print(b) 
} 

# Evaluate the function without supplying one of the arguments. 

new.function(6)

