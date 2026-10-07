digits <- 0:9
names(digits) <- c("zero","one","two","three","four","five","six","seven","eight","nine")
words.2.digits <- function(word){
  return(as.integer(digits[word]));
}
digits.2.words <- function(digit){
  return(names(digits[digits == digit]))
}