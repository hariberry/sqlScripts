SELECT
	`orderNumber`,
	`orderDate`,
	`requiredDate`,
	`shippedDate`,
	`status`,
	`comments`,
	`customerNumber`,
	(`shippedDate` - `orderDate` ) AS duration
FROM
	`orders`;
