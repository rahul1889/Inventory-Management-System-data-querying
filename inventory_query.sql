SELECT
s2.ing_name,
s2.ordered_weight,
ing.ing_weight*inv.quantity as total_inv_weight,
(ing.ing_weight*inv.quantity)-s2.ordered_weight as remaining_weight

FROM
(SELECT 
	ing_id,
	ing_name,
	sum(ordered_weight) as ordered_weight
FROM
	stock1
GROUP BY ing_name, ing_id) S2

lEFT JOIN inventory inv ON inv.item_id = s2.ing_id
LEFT JOIN Ingredient ing on ing.ing_id = S2.ing_id