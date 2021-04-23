SELECT `employeeNumber`, `lastName`, `firstName`, `extension`, `email`, `officeCode`, `reportsTo`, `jobTitle`
FROM `employees`
WHERE `firstName` LIKE "M*" AND `lastName` LIKE "G*"
