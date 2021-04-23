SELECT
	`employeeNumber`,
	`lastName`,
	`firstName`,
	`offices`.`city`
FROM
	`employees`
INNER JOIN `offices` ON
	`employees`.`officeCode` = `offices`.`officeCode`
