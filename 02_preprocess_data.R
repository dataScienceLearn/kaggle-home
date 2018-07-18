
plot(complete$TARGET,complete$FLAG_OWN_CAR)


FLAG_OWN_CAR+
  FLAG_OWN_REALTY+
  CNT_CHILDREN+
  AMT_INCOME_TOTAL+
  AMT_CREDIT+
  DAYS_BIRTH+
  DAYS_EMPLOYED

index <- sample(c("train","test"),nrow(complete),replace=TRUE, prob = c(0.8,0.2))

complete.split <- split(complete,index)

train <- complete.split$train
test <- complete.split$test

