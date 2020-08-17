# ML Regressions

# install.packages('tidymodels')

library(tidymodels)

data(ames)

set.seed(4595)
data_split <- initial_split(ames, strata = "Sale_Price", p = 0.75)

ames_train <- training(data_split)
ames_test  <- testing(data_split)

rf_defaults <- rand_forest(mode = "regression")
rf_defaults