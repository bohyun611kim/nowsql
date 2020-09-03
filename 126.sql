SELECT 
    Student AS 'student',
    GradeType AS 'Grade Type',
    AVG(COALESCE(grade, 0)) AS 'avg grade'
FROM
    grades
GROUP BY GradeType , Student
ORDER BY Student , GradeType