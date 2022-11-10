source("../scripts/recipes.R")
source("../scripts/specs.R")

workflows <- function(model) {
    spec <- specs(model)

    # RF Regression
    if (model == "rf" && reg_clas == "reg") {
        workflow <- workflow() %>%
            add_recipe(rec_reg_rf) %>%
            add_model(spec)
    }

    # XGB Regression
    if (model == "xgb" && reg_clas == "reg") {
        workflow <- workflow() %>%
            add_recipe(rec_reg_rf) %>%
            add_model(spec)
    }



    # Regression
    if (reg_clas == "reg") {
        workflow <- workflow() %>%
            add_recipe(rec_reg) %>%
            add_model(spec)
    }

    # Classification
    if (reg_clas == "clas") {
        workflow <- workflow() %>%
            add_recipe(rec_clas) %>%
            add_model(spec)
    }

    workflow
}