# create a date object
date <- as.Date("2023-04-21")
# print the date object
print(date)
typeof(date)
class(date)

d<-"2023-04-21"
class(d)


#timestamp
timestamp <- as.POSIXct("2023-04-21 12:34:56", tz = "UTC")
print(timestamp)


timestamp2 <- as.POSIXct("2022-04-21 12:34:56", tz = "Asia/Kolkata")
print(timestamp2)


#Sys.time returns the current time
Sys.Date()
Sys.time()
Sys.timezone()



#install.packages("lubridate")
library(lubridate)


#Functions
x<- as.POSIXct("2022-04-21 12:34:56", tz = "Asia/Kolkata")
print(x)
y<-as.Date("2023-04-21")
y
year(y )
year(x)


month(x)
month(y)

day(x)
day(y)

wday(x)
week(x)


#More Functions
date1 <- as.Date("2022-04-22")
date2 <- as.Date("2022-05-01")

diff <- difftime(date2, date1, units = "days")
diff

#"secs": seconds
#"mins": minutes
#"hours": hours
#"days": days
#"weeks": weeks
#"months": months
#"quarters": quarters
#"years": years

difftime(date2,date1)
difftime(date2,date1,units='weeks')




timestamp1 <- as.POSIXct("2022-04-22 14:30:00", tz = "UTC")
timestamp2 <- as.POSIXct("2022-01-22 15:45:00", tz = "UTC")
difftime(timestamp2, timestamp1, units = "mins")
difftime(timestamp2, timestamp1, units = "secs")
