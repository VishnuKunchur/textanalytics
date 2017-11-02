##Manipulation and Visualization of Text Data

##The cat() function helpes you print out single quotation marks

cat("\"") #- print a single quotation mark

cat("ab\ncd") #-print ab followed by cd in a new line

cat("a\tb\nc\td") #- print tab delimited

cat(":-\\") # "\" is an escape character

cat("\\m/")

cat("@_'-'")

cat("(^_^\")")

##stringr

library(stringr)
?str_locate
?str_sub

#4

str_locate(string = "great", pattern = "a")

awe_list = c("great", "fantastic", "super")

str_locate(string = awe_list, pattern = "a")


#5
str_sub(string = "testing", start = c(1,4,1), end = c(3,7,4))

input = c("abc", "defg")
str_sub(input, c(2,3))

#7

list.files()

email = "email(1).rds"

head(email)
email = readRDS("email(1).rds")

email[1]
cat(email[1])

#8
header = str_sub(string = email[1], start=1, end = 1014)
body = cat(str_sub(string = email[1], start = 1015, end = nchar(email[1])))

#9
str_split(string = header, pattern = "\n")
head(email)


breaks = str_locate(string = email, pattern = "\n\n")

metadata = str_sub(string = email, start = 1, end = breaks[,1])
body = str_sub(string = email, start = breaks[,2])
body[2]
