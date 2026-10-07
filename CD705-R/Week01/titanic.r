
titanic <- (function() {
    filename = "/workspaces/CD705-R/CD705-R/Week01/titanic2208.csv"
    encoding = "latin1"
    read.csv(file = filename, fileEncoding = encoding)
})()

head(titanic)
str(titanic)
summary(titanic)
dim(titanic)
is.na(titanic)

na_count <- c()
for (name in names(titanic)) {
    na_count[name] <- sum(is.na(titanic[[name]]))
}

na_count

p_survival_gender <- function(gender) {
    num_of_gender <- sum(titanic$Sex == gender)
    num_of_gender_survived <- 
        sum(titanic$Sex == gender & 
            titanic$Survived == 1)
    output <- num_of_gender_survived / num_of_gender
    return(output)
}

p_survival_male <- p_survival_gender("male")
p_survival_female <- p_survival_gender("female")

p_survival_children <- (function() {
    children <- titanic$Age < 18
    num_of_children <- sum(children, na.rm = TRUE)
    num_of_children_survived <- sum(children & titanic$Survived == 1, na.rm = TRUE)
    p_survival_children <- num_of_children_survived / num_of_children
     p_survival_children
})()

p_survival_children

mean(nchar(titanic$Name))
