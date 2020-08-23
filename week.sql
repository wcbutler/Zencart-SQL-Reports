SELECT 
orders_products.orders_id, 
date_purchased, 
products_name,
products_quantity,
products_price,
-- final_price,
-- products_prid,
customers_name,
payment_method,
coupon_code,
CASE WHEN products_model = '625-ir' THEN '8.50'
               ELSE 'N/A' END AS wholesale_price
-- SUM(products_quantity * wholesale_price) as totals

FROM tlal_zencart151.orders INNER JOIN tlal_zencart151.orders_products ON orders.orders_id = orders_products.orders_id
WHERE date_purchased >= CURDATE() - 7 -- change this with last run date
-- AND tlal_zencart151.orders_products.products_model like '625%'
ORDER BY orders_id

