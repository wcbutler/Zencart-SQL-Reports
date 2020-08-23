SELECT 
orders_products.orders_id, 
date_purchased, 
products_name,
products_quantity,
products_price,
products_model,
-- final_price,
-- products_prid,
customers_name,
payment_method,
coupon_code,
CASE WHEN products_model = '625-ir' THEN 8.50  -- Internal Rot - Grieving Birth LP
     WHEN products_model = '625#262' THEN 8.50 -- Internal Rot - Grieving Birth LP
     WHEN products_model = '625#249' THEN 8.50 -- Internal Rot - Mental Hygiene LP
     WHEN products_model = '625#217' then 3.00 -- Flipout A.A	- Flipout Song CD
     WHEN products_model = '625#258' then 3.50 -- Communicates - Restricted 7"
     WHEN products_model = '625#246' then 2.00 -- Flipout A.A	- Flipout Song 7"
     WHEN products_model = '625#247' then 2.00 -- Flipout A.A	- Non Fiction 7"
     WHEN products_model = '625#254' then 3.50 -- Flipout A.A / Conquest For Death 7"
	 WHEN products_model = '625#198' then 2.00 -- Severe - Snitch Slaughter 7"
     WHEN products_model = '625#119' then 3.00 -- Hewhocorrupts - Ten Steps To Success CD
     WHEN products_model = '625#253' then 5.00 -- Suffering Mind - Waste Farm LP
     WHEN products_model = '625#135' then 2.00 -- Stockholm Syndrome - One Way Out 7"
     WHEN products_model = '625#181' then 3.00 -- Kungfu Rick - Fragments Of The Past Time 2xCD
     WHEN products_model = '625#244' then 7.00 -- Completed Exposition -	Structure Space Mankind LP
               ELSE 'N/A' END AS wholesale_price
-- SUM(products_quantity * wholesale_price) as totals

FROM tlal_zencart151.orders INNER JOIN tlal_zencart151.orders_products ON orders.orders_id = orders_products.orders_id
WHERE date_purchased >= '2020/05/17' -- change this with last run date 8/17
-- AND date_purchased <= '2020/08/30'
AND tlal_zencart151.orders_products.products_model like '625%'
ORDER BY orders_id

