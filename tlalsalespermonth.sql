  SELECT YEAR(date_purchased) as SalesYear,
         MONTH(date_purchased) as SalesMonth,
         SUM(products_price) AS TotalSales
    FROM tlal_zencart151.orders INNER JOIN tlal_zencart151.orders_products ON orders.orders_id = orders_products.orders_id
    where tlal_zencart151.orders_products.products_model like 'TLAL%'
GROUP BY YEAR(date_purchased), MONTH(date_purchased)
ORDER BY YEAR(date_purchased) DESC, MONTH(date_purchased) DESC