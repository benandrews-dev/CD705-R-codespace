# Exercise 8

boys<-data.frame(id=1:8,grade=c(6,32,28,12,62,75,23,66),gender=rep("boy",8))
girls<-data.frame(id=1:10,grade=c(14,95,78,6,6,53,39,14,48,62),gender=rep("girl",10))

tmp <- rbind(boys,girls)
tmp

# Exercise 9
boys <- data.frame(id=1:8, grade = c(16,45,72,34,55,88,67,78))
girls <- data.frame(id=1:10, Mark = c(99,84,44,1,56,8,9,98,61,40))

names(girls) <- names(boys)
boys$gender <- "boy"
girls$gender <- "girl"

girls$id <- girls$id + max(boys$id)

boys_and_girls <- rbind(boys,girls)
#str(boys_and_girls)

# Exercise 10


