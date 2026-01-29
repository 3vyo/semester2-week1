-- List all students along with the names of the courses they are enrolled in.
-- Expected Columns:
-- StudentId, FirstName, LastName, CourseName
SELECT student.StudentId, student.FirstName, student.LastName, course.CourseName
FROM Student AS student, Course AS course, Enrolment AS enrolment
WHERE student.StudentId = enrolment.StudentId
AND course.CourseId = enrolment.CourseId;