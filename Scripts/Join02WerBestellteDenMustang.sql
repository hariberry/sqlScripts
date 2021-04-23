SELECT
	`productName`,
	`customers`.`contactFirstName`,
	`customers`.`contactLastName`
FROM
	`products`
INNER JOIN `orderdetails` ON
	`orderdetails`.`productCode` = `products`.`productCode`
INNER JOIN `orders` ON
	`orderdetails`.`orderNumber` = `orders`.`orderNumber`
INNER JOIN `customers` ON
	`orders`.`customerNumber` = `customers`.`customerNumber`
WHERE
	`productName` = "1968 Ford Mustang"
