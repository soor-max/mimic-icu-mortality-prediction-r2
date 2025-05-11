# model.R
# ICU Mortality Prediction Script

library(tidyverse)
library(caret)
library(randomForest)
library(xgboost)
library(pROC)

# 1. Load data
data <- read.csv("data/cleaned_data.csv")

# 2. Basic check
str(data)
summary(data)

# 3. Handle missing values (simple fill for demo)
data[is.na(data)] <- -999

# 4. Assume target variable is 'mortality' and is binary (0 = alive, 1 = death)
data$mortality <- as.factor(data$mortality)

# 5. Split into train/test
set.seed(123)
train_index <- createDataPartition(data$mortality, p = 0.7, list = FALSE)
train_data <- data[train_index, ]
test_data <- data[-train_index, ]

# 6. Logistic Regression
logit_model <- glm(mortality ~ ., data = train_data, family = "binomial")
logit_pred <- predict(logit_model, test_data, type = "response")

# 7. Random Forest
rf_model <- randomForest(mortality ~ ., data = train_data, ntree = 100)
rf_pred <- predict(rf_model, test_data, type = "prob")[,2]

# 8. XGBoost
train_matrix <- xgb.DMatrix(data = as.matrix(train_data[,-which(names(train_data) == "mortality")]),
                            label = as.numeric(train_data$mortality) - 1)
test_matrix <- xgb.DMatrix(data = as.matrix(test_data[,-which(names(test_data) == "mortality")]))
xgb_model <- xgboost(data = train_matrix, label = as.numeric(train_data$mortality) - 1,
                     nrounds = 100, objective = "binary:logistic", verbose = 0)
xgb_pred <- predict(xgb_model, test_matrix)

# 9. ROC & AUC
logit_auc <- roc(test_data$mortality, logit_pred)
rf_auc <- roc(test_data$mortality, rf_pred)
xgb_auc <- roc(test_data$mortality, xgb_pred)

png("output/roc_curve.png")
plot(logit_auc, col = "blue", main = "ROC Curves")
lines(rf_auc, col = "green")
lines(xgb_auc, col = "red")
legend("bottomright", legend=c("Logistic", "RandomForest", "XGBoost"),
       col=c("blue", "green", "red"), lwd=2)
dev.off()

# 10. Save predictions
output <- data.frame(
  true_label = test_data$mortality,
  logistic = logit_pred,
  random_forest = rf_pred,
  xgboost = xgb_pred
)
write.csv(output, "output/predictions.csv", row.names = FALSE)
cat("AUC scores:\n")
cat("Logistic Regression AUC:", auc(logit_auc), "\n")
cat("Random Forest AUC:", auc(rf_auc), "\n")
cat("XGBoost AUC:", auc(xgb_auc), "\n")

