SELECT
	`jobTitle`,
	count(*) AS jobCount
FROM
	`employees`
GROUP BY
	`jobTitle`
ORDER BY
	jobCount DESC