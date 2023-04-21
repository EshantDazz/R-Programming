#If Else
x <- 30L 
if(is.integer(x)) { 
  print("X is an Integer") }


x <- c("what","is","truth")
if("Truth" %in% x) { 
  print("Truth is found")
} else 
{ 
  print("Truth is not found") 
}


x <- c("what","is","truth") 

if("Truth" %in% x) {
  print("Truth is found the first time") 
} else if ("truth" %in% x) { 
  print("truth is found the second time") 
} else 
{ 
  print("No truth found") 
}
