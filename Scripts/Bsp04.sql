SELECT
	`productCode`,
	`productName`,
	(MSRP - `buyPrice`) AS Marge
FROM
	`products`

