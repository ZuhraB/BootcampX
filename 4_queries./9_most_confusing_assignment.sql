SELECT assignments.id, name, assignments.day, assignments.chapter,count(assistance_requests.*) as total_requests 
FROM assistance_requests  
JOIN assignments ON assignment_id = assignments.id
GROUP bY assignments.id
ORDER BY total_requests DESC;