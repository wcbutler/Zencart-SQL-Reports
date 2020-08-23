SELECT 
orders_products.orders_id, 
date_purchased, 
products_name,
products_quantity,
products_price,
 final_price,
-- products_prid,
customers_name,
customers_email_address,
payment_method,
coupon_code

FROM tlal_zencart151.orders INNER JOIN tlal_zencart151.orders_products ON orders.orders_id = orders_products.orders_id
WHERE date_purchased >= '2020/01/01' -- change this with last run date
 AND products_name like 'Racetraitor/Closet Witch/NBDC/Haggathorn%'
ORDER BY orders_id

