-- The average score per student
SELECT
	student_id,
	AVG(score)
FROM
	peer_assessment.`20240819-20241125-ADB-BBIT2.2` ab
WHERE
	student_id
GROUP BY
	student_id
ORDER BY
	student_id ASC;


-- The score per student
SELECT
	student_id,
	score,
	comment
FROM
	peer_assessment.`20240819-20241125-ADB-BBIT2.2` ab
WHERE
	student_id = 150237;