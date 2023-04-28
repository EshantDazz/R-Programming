#loops

#repeat loop
v <- c("Hello","loop")
cnt <- 2 
repeat {
  print(v)
  cnt <- cnt+1 
  if(cnt > 5) { 
    break } 
}

#WHILE LOOP
v <- c("Hello","while loop") 
cnt <- 2 

while (cnt < 7) { 
  print(v) 
  cnt = cnt + 1 
}

v <- LETTERS[1:4] 
v
for ( i in v) { 
  print(i) 
}



#using next instead of continue for other programming languages
v <- LETTERS[1:6] 

for ( i in v) {
  if (i == "D") { 
    next 
  } 
  print(i) 
}


d<-1:5
typeof(d)
is.vector(d)


for (i in d){
  print(i)
}


c<-seq(1,10)
c
typeof(c)
is.vector(c)
for(i in c){
  print(i)
}


vec <- c("a", "b", "c")
for (i in seq_along(vec)) {
  # Code to be executed
  print(i)
  print(vec[i])
}



#More while loop;
vec <- c("a", "b", "c")
i <- 1
while (i <= length(vec)) {
  # Code to be executed
  print(vec[i])
  i <- i + 1
}
