
fit <- glm(TARGET ~ FLAG_OWN_CAR+
             (AMT_CREDIT/AMT_INCOME_TOTAL)+
             FLAG_OWN_REALTY+
             income_credit_ratio+
             #       CNT_CHILDREN+
             #       AMT_INCOME_TOTAL+
             #        AMT_CREDIT+
             #       DAYS_BIRTH+
             DAYS_EMPLOYED,family = binomial,data = train)

complete <- complete %>% mutate(
  income_credit_ratio = AMT_INCOME_TOTAL / AMT_CREDIT
)

test.prediction <- predict(fit, test, type="response")
test.prediction <- ifelse(test.prediction > 0.5, 1, 0)

table(test.prediction, test$TARGET)



prediction.obj <- prediction(...)

pred <- prediction(test.prediction, test$TARGET) 

auc.perf = performance(pred, measure = "auc")

paste("AUC: ", auc.perf@y.values)



