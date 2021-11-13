SELECT services.contract, COUNT(services.contract) FROM services
INNER JOIN status
ON services.customer_id = status.customer_id 
WHERE status.churn_value = 1
GROUP BY services.contract;