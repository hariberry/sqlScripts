SELECT top 5 `customers`.`customerNumber`, min(`customers`.`contactFirstName`), min(`customers`.`contactLastName`), sum(`orderdetails`.`quantityOrdered`) AS prodAnzahl
FROM `products`
INNER JOIN `orderdetails`  ON `orderdetails`.`productCode` = `products`.`productCode` 
INNER JOIN `orders` ON  `orderdetails`.`orderNumber` = `orders`.`orderNumber` 
INNER JOIN `customers` ON `orders`.`customerNumber` = `customers`.`customerNumber`
GROUP BY `customers`.`customerNumber`
ORDER BY prodAnzahl desc