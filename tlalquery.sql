SELECT 
orders_products.orders_id, 
date_purchased, 
products_name,
products_quantity,
products_price,
 final_price,
-- products_prid,
customers_name,
payment_method,
coupon_code


FROM tlal_zencart151.orders INNER JOIN tlal_zencart151.orders_products ON orders.orders_id = orders_products.orders_id
WHERE date_purchased >= '2020/08/12' -- change this with last run date
-- AND date_purchased <= '2020/08/30'
AND tlal_zencart151.orders_products.products_model like 'TLAL%'
ORDER BY orders_id

