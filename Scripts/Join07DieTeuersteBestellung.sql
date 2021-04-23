SELECT  `orders`.`orderNumber` ,  sum(`orderdetails`.`quantityOrdered` * `products`.MSRP) AS orderprice
FROM `products`
INNER JOIN `orderdetails`  ON `orderdetails`.`productCode` = `products`.`productCode` 
INNER JOIN `orders` ON  `orderdetails`.`orderNumber` = `orders`.`orderNumber` 
INNER JOIN `customers` ON `orders`.`customerNumber` = `customers`.`customerNumber`
GROUP BY `orders`.`orderNumber` 
ORDER BY ORDERPRICE desc
