# B105 Assignment
library(readr)
Customer_Churn_Records <- read_csv("Customer-Churn-Records.csv")

dim(Customer_Churn_Records)
names(Customer_Churn_Records)
str(Customer_Churn_Records)
head(Customer_Churn_Records)

colSums(is.na(Customer_Churn_Records))
sum(duplicated(Customer_Churn_Records))

summary(Customer_Churn_Records[, c("Age", "Balance", "Exited")])
table(Customer_Churn_Records$Exited)
prop.table(table(Customer_Churn_Records$Exited)) * 100

barplot(
  table(Customer_Churn_Records$Exited),
  names.arg = c("Stayed", "Exited"),
  main = "Customer Churn Distribution",
  xlab = "Customer Status",
  ylab = "Number of Customers"
)

mean(Customer_Churn_Records$Age[Customer_Churn_Records$Exited == 0])

mean(Customer_Churn_Records$Age[Customer_Churn_Records$Exited == 1])

boxplot(
  Age ~ Exited,
  data = Customer_Churn_Records,
  names = c("Stayed", "Exited"),
  main = "Age by Customer Churn Status",
  xlab = "Customer Status",
  ylab = "Age"
)

sd(Customer_Churn_Records$Age[Customer_Churn_Records$Exited == 0])

sd(Customer_Churn_Records$Age[Customer_Churn_Records$Exited == 1])

hist(
  Customer_Churn_Records$Age[Customer_Churn_Records$Exited == 0],
  main = "Age Distribution - Customers Who Stayed",
  xlab = "Age",
  ylab = "Number of Customers"
)

hist(
  Customer_Churn_Records$Age[Customer_Churn_Records$Exited == 1],
  main = "Age Distribution - Customers Who Exited",
  xlab = "Age",
  ylab = "Number of Customers"
)

t.test(
  Age ~ Exited,
  data = Customer_Churn_Records
)

mean(Customer_Churn_Records$Balance[Customer_Churn_Records$Exited == 0])

mean(Customer_Churn_Records$Balance[Customer_Churn_Records$Exited == 1])

boxplot(
  Balance ~ Exited,
  data = Customer_Churn_Records,
  names = c("Stayed", "Exited"),
  main = "Balance by Customer Churn Status",
  xlab = "Customer Status",
  ylab = "Balance"
)

sd(Customer_Churn_Records$Balance[Customer_Churn_Records$Exited == 0])

sd(Customer_Churn_Records$Balance[Customer_Churn_Records$Exited == 1])

hist(
  Customer_Churn_Records$Balance[Customer_Churn_Records$Exited == 0],
  main = "Balance Distribution - Customers Who Stayed",
  xlab = "Balance",
  ylab = "Number of Customers"
)

hist(
  Customer_Churn_Records$Balance[Customer_Churn_Records$Exited == 1],
  main = "Balance Distribution - Customers Who Exited",
  xlab = "Balance",
  ylab = "Number of Customers"
)

t.test(
  Balance ~ Exited,
  data = Customer_Churn_Records
)
