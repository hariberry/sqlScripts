SELECT  `orders`.`orderNumber` ,  sum(`orderdetails`.`quantityOrdered` * (`products`.MSRP-`products`.`buyPrice`)) AS margin
FROM `products`
INNER JOIN `orderdetails`  ON `orderdetails`.`productCode` = `products`.`productCode` 
INNER JOIN `orders` ON  `orderdetails`.`orderNumber` = `orders`.`orderNumber` 
INNER JOIN `customers` ON `orders`.`customerNumber` = `customers`.`customerNumber`
GROUP BY `orders`.`orderNumber` 
ORDER BY margin desc
