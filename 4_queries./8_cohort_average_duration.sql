SELECT average_total as  average_total_duration
FROM (SELECT cohorts.name as cohort, sum(completed_at-started_at) as total_duration 
FROM assistance_requests
JOIN students ON students.id = student_id 
JOIN cohorts  ON cohorts.id = cohort_id
GROUP by cohort
ORDER BY total_duration) as average_total

