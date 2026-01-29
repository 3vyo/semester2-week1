-- For each department, calculate the number of enrolments in its courses.
-- Expected Columns:
-- DepartmentName, TotalEnrolments
SELECT department.DepartmentName, COUNT(Enrolment.EnrolmentId) AS TotalEnrolments
FROM Department, Enrolment, Course
WHERE department.DepartmentId = Course.DepartmentId
AND Course.CourseId = Enrolment.CourseId
GROUP BY department.DepartmentName;