SELECT top 10 `productCode`, min(`productName`) AS prodName, sum(`quantityOrdered`) AS gesamtSumme
FROM `products`
INNER JOIN `orderdetails`  ON `orderdetails`.`productCode` = `products`.`productCode` 
INNER JOIN `orders` ON  `orderdetails`.`orderNumber` = `orders`.`orderNumber` 
GROUP BY `productCode`
ORDER BY gesamtSumme desc

