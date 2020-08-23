select * from tlal_zencart151.products 
where products_quantity < 1
and products_model like '625%'
and products_id IS NOT NULL
and products_model <> '625#249'