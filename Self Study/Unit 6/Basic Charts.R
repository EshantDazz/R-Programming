Implementing CHarts


#Scatter Plot
x <- c(1, 2, 3, 4, 5)
y <- c(10, 12, 15, 17, 20)
plot(x,y)
plot(x, y, main = "My Scatter Plot", xlab = "X Values", ylab = "Y Values")



#Line CHart
x <- c(1, 2, 3, 4, 5)
y <- c(10, 12, 15, 17, 20)
plot(x, y, type = "l")
plot(x, y, type = "l", main = "My Line Chart", xlab = "X Values", ylab = "Y Values")


#BarChart
x <- c("A", "B", "C", "D", "E")
y <- c(10, 12, 15, 17, 20)
barplot(y, names.arg = x)
barplot(y, names.arg = x, main = "My Bar Chart", xlab = "X Values", ylab = "Y Values")

barplot(y, names.arg = x, main = "My Bar Chart", xlab = "X Values", ylab = "Y Values", col = rainbow(length(y)))
legend("topright", legend = x, fill = rainbow(length(y)))



#Pie CHart
pie(y, labels = x)
pie(y, labels = x, main = "My Pie Chart")
legend("topright", x, cex = 0.8, fill = rainbow(length(x)))


#Adding Percentages  in Pie Chart

library(scales)
# create the pie chart
pie(y, labels = x, main = "My Pie Chart")
# add legend
legend("topright", x, cex = 0.8, fill = rainbow(length(x)))
# add percentages to each slice
percentages <- percent(y/sum(y))
labels_pct <- paste(x, " (", percentages, ")")
typeof(labels_pct)
hh<-paste(x,"(", y , ")")
pie(y, labels = labels_pct, main = "My Pie Chart")
legend("topright", x, cex = 0.8, fill = rainbow(length(x)))
pie(y,labels = hh)

#Adding colors
my_colors <- c("#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
pie(y, labels = x, main = "My Pie Chart", col = my_colors)
legend("topright", x, cex = 0.8, fill = my_colors)
