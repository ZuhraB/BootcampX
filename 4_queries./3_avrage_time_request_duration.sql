SELECT SUM (started_at - completed_at) / count (assistance_requests.*) as average_assistance_request_duration 
FROM assistance_requests
