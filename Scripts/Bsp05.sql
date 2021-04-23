SELECT
	top 5 `productCode`,
	`productName`,
	(MSRP - `buyPrice`) AS Marge
FROM
	`products`
ORDER BY
	marge DESC
