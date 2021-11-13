SELECT AVG(status.satisfaction_score) FROM status
WHERE status.churn_value = 1;