SELECT
	`country`,
	count(*)
FROM
	`customers`
GROUP BY country
