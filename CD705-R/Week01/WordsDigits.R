digits <- 0:9
names(digits) <- c("zero","one","two","three","four","five","six","seven","eight","nine")
words.2.digits <- function(word){
  return(as.integer(digits[word]));
}
digits.2.words <- function(digit){
  return(names(digits[digits == digit]))
}

words.2.digits
digits.2.words

day_digits <- 1:7
names(day_digits) <- c("Monday","Tuesday",
  "Wednesday","Thursday","Friday",
  "Saturday","Sunday")

day.2.number <- function(day){
  return(as.integer(day_digits[day]));
}
day.2.number("Tuesday")

number.2.day <- function(number){
  return(names(day_digits[day_digits == number]))
}

number.2.day(3)

digits.2.words(as.numeric("0"))

nums <- 0:9
nums_as_chars <- as.character(nums)
names(nums_as_chars) <- c("zero","one","two","three","four","five","six","seven","eight","nine")
nums_as_chars

