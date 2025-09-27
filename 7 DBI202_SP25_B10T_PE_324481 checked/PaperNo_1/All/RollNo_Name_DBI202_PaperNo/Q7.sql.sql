SELECT TOP 1 
    s.store_id, 
    s.store_name, 
    SUM(st.quantity) AS total_quantity
FROM stores s
JOIN stocks st ON s.store_id = st.store_id
GROUP BY s.store_id, s.store_name
ORDER BY total_quantity DESC;