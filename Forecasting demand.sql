-- Calculate 3-day moving average for Widget A
SELECT 
    sale_date,
    AVG(units_sold) AS forecasted_demand
FROM 
    SalesHistory
WHERE 
    product_id = 1
GROUP BY 
    sale_date
ORDER BY 
    sale_date DESC
LIMIT 3;
