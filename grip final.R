#tsf 
#business analytics task 1

#importing data
library(readxl)
grip <- read_excel("C:/Users/my pc/Desktop/grip.xlsx")

#plotting the scores
plot(grip$Hours,grip$Scores, main= 'Hours and scores')

#creating the linear regression model
model<- lm(grip$Scores~grip$Hours)

#running the model
model

# more details of the model
summary(model)

#r-square tells us that the model explain 95% of the data 
#looking at the coefficients, we can infer that there is a positive relation between the two variables

#the coefficients are in console
#we'll be applying *y= mx+b* to predict the score

#creating function
predicted_scores <- function(x) {
  y<- 9.776 * x + 2.484
  y
}
#predicted score of a student who studies 9.25 hours/day
predicted_scores(9.25)
