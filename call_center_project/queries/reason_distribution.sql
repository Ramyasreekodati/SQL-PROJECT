-- reason_distribution.sql
-- Count of calls by reason
SELECT reason, COUNT(*) AS calls_count
FROM call_center
GROUP BY reason
ORDER BY calls_count DESC;
