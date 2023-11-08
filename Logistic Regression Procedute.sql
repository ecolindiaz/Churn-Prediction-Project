CREATE PROCEDURE dbo.TrainChurnModel
AS
BEGIN
    EXEC sp_execute_external_script
    @language = N'R',
    @script = N'
        library(RevoScaleR)
        data <- InputDataSet
        formula <- as.formula("churn_binary ~ credit_score + age + tenure + balance + products_number + credit_card + active_member + estimated_salary")
        model <- rxLogit(formula, data = data)
    ',
    @input_data_1 = N'SELECT * FROM Training_Data',
    @input_data_1_name = N'InputDataSet'
END