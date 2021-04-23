SELECT
	top 3 `orderNumber`,
	`orderDate`,
	`requiredDate`,
	`shippedDate`,
	`status`,
	`comments`,
	`customerNumber`,
	(`shippedDate` - `orderDate` ) AS duration
FROM
	`orders`
WHERE
	NOT (`shippedDate` - `orderDate`) IS NULL
ORDER BY
	DURATION DESC
