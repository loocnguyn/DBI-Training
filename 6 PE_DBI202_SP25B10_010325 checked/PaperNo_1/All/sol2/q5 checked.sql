SELECT 
    d.DepartmentID, 
    d.DepartmentName, 
    COUNT(s.StudentID) AS NumberOfStudents
FROM Departments d
 JOIN Students s 
    ON d.DepartmentID = s.DepartmentID
GROUP BY d.DepartmentID, d.DepartmentName
ORDER BY d.DepartmentID;
