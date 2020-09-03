SELECT 
    Student AS 'student',
    GradeType AS 'grade type',
    ROUND(AVG(COALESCE(grade, 0)), 2) AS 'average grade'
FROM
    grades
WHERE
    GradeType = 'Quiz'
GROUP BY GradeType , Student
HAVING AVG(Grade) >= 70
ORDER BY Student , GradeType
