source("/workspaces/CD705-R/CD705-R/Week01/people.R")
name
df <- data.frame(birth, gender, height, name, weight)
num_males = sum(df$gender == "male")
height
mean(height)
plot(height, weight, main="Height vs Weight", xlab="Height (cm)", 
    ylab="Weight (kg)", pch=19, col=ifelse(gender=="male",
    "blue","red"))

str(df)

summary(df)
