-- All comments
SELECT
	abws.student_ID,
	GROUP_CONCAT(comment SEPARATOR '; ') AS combined_comments
FROM
	peer_assessment.`20240819-20241125-ADB-BBIT2.2-without-self` abws
GROUP BY
	abws.student_ID
ORDER BY
	abws.student_id ASC;

-- Individual comments
SELECT
	abws.student_id,
	abws.score,
	abws.comment
FROM
	peer_assessment.`20240819-20241125-ADB-BBIT2.2-without-self` abws 
WHERE
	abws.student_id = 148396;