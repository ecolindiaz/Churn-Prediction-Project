CREATE TABLE Training_Data (
    customer_id INT,
    credit_score INT,
    age INT,
    tenure INT,
    balance DECIMAL(10, 2),
    products_number INT,
    credit_card BIT,
    active_member BIT,
    estimated_salary DECIMAL(10, 2),
    churn_binary BIT
);
CREATE TABLE Testing_Data (
    customer_id INT,
    credit_score INT,
    age INT,
    tenure INT,
    balance DECIMAL(10, 2),
    products_number INT,
    credit_card BIT,
    active_member BIT,
    estimated_salary DECIMAL(10, 2),
    churn_binary BIT
);
