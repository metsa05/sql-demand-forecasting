-- Check if inventory levels are too low for restocking
SELECT 
    p.product_name, 
    i.stock_level,
    f.forecasted_demand
FROM 
    Inventory i
JOIN 
    Products p ON i.product_id = p.product_id
LEFT JOIN 
    (SELECT product_id, AVG(units_sold) AS forecasted_demand
     FROM SalesHistory
     WHERE sale_date BETWEEN '2024-11-01' AND '2024-11-03'
     GROUP BY product_id) f
    ON i.product_id = f.product_id
WHERE 
    i.stock_level < f.forecasted_demand;
