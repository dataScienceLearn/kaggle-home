library(readr)
library(ROCR)
library(dplyr)


set.seed(42)

complete <- read_csv("application_train.csv")

application_submit <- read_csv("application_test.csv")  #submission data
