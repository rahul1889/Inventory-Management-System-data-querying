SELECT 

r.date,
s.first_name,
s.last_name,
s.hourly_rate,
sh.start_time,
sh.end_time,
(DATE_PART('hour', sh.end_time - sh.start_time) + DATE_PART('minute', sh.end_time - sh.start_time)/60) as hours_in_shift,
(DATE_PART('hour', sh.end_time - sh.start_time) + DATE_PART('minute', sh.end_time - sh.start_time)/60)*s.hourly_rate as staff_cost
FROM rota r
LEFT JOIN staff s ON r.staff_id = s.staff_id
LEFT JOIN shift sh ON r.shift_id = sh.shift_id