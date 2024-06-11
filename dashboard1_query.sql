SELECT
o.order_id,
i.item_price,
o.quantity,
i.item_cat,
i.item_name,
o.created_at,
ad.delivery_address1,
ad.delivery_address2,
ad.delivery_city,
ad.delivery_zipcode,
o.delivery
FROM 
	orders o 
	LEFT JOIN item i ON o.item_id = i.item_id
	LEFT JOIN address ad ON o.add_id = ad.add_id


