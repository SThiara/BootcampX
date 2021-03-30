SELECT students.name as student, 
AVG(assignment_submissions.duration) as avg_time
FROM students JOIN assignment_submissions 
ON students.id = assignment_submissions.student_id
WHERE students.end_date IS NULL
GROUP BY student
ORDER BY avg_time DESC;
