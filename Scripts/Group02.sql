SELECT
	`productLine`,
	`productScale`,
	AVG(`buyPrice`) avgPrice
FROM
	`products`
GROUP BY
	`productLine` ,
	`productScale`
	ORDER BY avgPrice desc 
