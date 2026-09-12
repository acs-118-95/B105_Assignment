# B105 Assignment
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
  xlab = "Age"
)

hist(
  Customer_Churn_Records$Age[Customer_Churn_Records$Exited == 1],
  main = "Age Distribution - Customers Who Exited",
  xlab = "Age"
)

t.test(
  Age ~ Exited,
  data = Customer_Churn_Records
)
