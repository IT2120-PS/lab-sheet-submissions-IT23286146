setwd("C:\\Users\\it23286146\\Desktop\\IT23286146")
getwd()

branch_data <- read.table("Exercise.txt", header = TRUE, sep = ",")
head(branch_data)

str(branch_data)

boxplot(branch_data$Sales_X1, main = "Boxplot of Sales", ylab = "Sales")

fivenum(branch_data$Advertising_X2)
IQR(branch_data$Advertising_X2)

find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR <- Q3 - Q1
  lower_bound <- Q1 - 1.5 * IQR
  upper_bound <- Q3 + 1.5 * IQR
  return(x[x < lower_bound | x > upper_bound])
}

find_outliers(branch_data$Years_X3)
