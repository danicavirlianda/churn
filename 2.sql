SELECT AVG(age)
FROM demographics
INNER JOIN status ON demographics.customer_id = status.customer_id
WHERE status.churn_value = 1;