SELECT demographics.senior_citizen, COUNT(status.count) AS NumberOfCustomersChurned FROM demographics 
INNER JOIN status 
ON demographics.customer_id = status.customer_id 
WHERE status.churn_value = 1 
GROUP BY demographics.senior_citizen;