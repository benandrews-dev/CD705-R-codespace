titanic <- read.csv("/workspaces/CD705-R/CD705-R/Week01/titanic2208.csv", fileEncoding = "latin1")
titanic <- read.csv("/workspaces/CD705-R/CD705-R/Week01/titanic2208.csv")
head(titanic)
str(titanic)
summary(titanic)
dim(titanic)
is.na(titanic)

na_count <- c()
for (i in 1:ncol(titanic)) {
    na_count[i] <- sum(is.na(titanic[,i]))
}
names(na_count) <- names(titanic)

na_count <- c()
for (name in names(titanic)) {
    na_count[name] <- sum(is.na(titanic[[name]]))
}

na_count

nrow(titanic)
sum(titanic$Survived == 1)

num_of_males <- sum(titanic$Sex == "male")
num_of_females <- sum(titanic$Sex == "female")
num_of_males
num_of_females
num_of_males_survived <- sum(titanic$Sex == "male" & titanic$Survived == 1)
num_of_females_survived <- sum(titanic$Sex == "female" & titanic$Survived == 1)
num_of_males_survived
num_of_females_survived

p_survival_male <- num_of_males_survived / num_of_males
p_survival_female <- num_of_females_survived / num_of_females
p_survival_male
p_survival_female   

children <- titanic$Age < 18
num_of_children <- sum(children, na.rm = TRUE)
num_of_children_survived <- sum(children & titanic$Survived == 1, na.rm = TRUE)
p_survival_children <- num_of_children_survived / num_of_children
p_survival_children


