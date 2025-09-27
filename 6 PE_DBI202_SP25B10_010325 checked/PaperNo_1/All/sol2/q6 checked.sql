SELECT s.StudentID, s.StudentFirstName, s.StudentLastName, s1.SubjectName, s1.SubjectID, MAX(r.Score) AS FinalGrade, r.NumberExams
FROM Students s
join results r on r.StudentID = s.StudentID
join Subjects s1 on s1.SubjectID = r.SubjectID
WHERE r.NumberExams = (
    SELECT MAX(r2.NumberExams)
    FROM Results r2
    WHERE r2.StudentID = r.StudentID
      AND r2.SubjectID = r.SubjectID
)
group by s.StudentID, s.StudentFirstName, s.StudentLastName, s1.SubjectName, r.NumberExams, s1.SubjectID
ORDER BY S.StudentID
