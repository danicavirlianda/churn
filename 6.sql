SELECT status.customer_id, services.total_revenue FROM status
INNER JOIN services
ON status.customer_id = services.customer_id 
WHERE status.churn_value = 1
ORDER BY services.total_revenue DESC
LIMIT 1;