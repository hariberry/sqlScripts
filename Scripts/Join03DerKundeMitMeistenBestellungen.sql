SELECT top 3 `orders`.`customerNumber`, count(*) AS anzahl
FROM `orders` 
INNER JOIN `customers` ON `orders`.`customerNumber` = `customers`.`customerNumber`
GROUP BY `orders`.`customerNumber`
ORDER BY ANZAHL  desc
