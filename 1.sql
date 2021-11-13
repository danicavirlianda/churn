SELECT location.city, COUNT(status.count) AS NumberOfCustomersChurned FROM status
  INNER JOIN location
    ON status.customer_id = location.customer_id
WHERE status.churn_value = 1
GROUP BY location.city
ORDER BY NumberOfCustomersChurned DESC
LIMIT 1;