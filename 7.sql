SELECT status.churn_reason, COUNT(status.count) AS NumberOfCustomersChurned FROM status 
WHERE churn_value = 1
GROUP BY status.churn_reason
ORDER BY NumberOfCustomersChurned DESC
LIMIT 1;