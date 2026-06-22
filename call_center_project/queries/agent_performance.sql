-- agent_performance.sql
-- Number of calls and average CSAT per call_center (represents a team/agent group)
SELECT call_center, COUNT(*) AS total_calls,
       AVG(csat_score) AS avg_csat,
       AVG(call_duration_minutes) AS avg_duration_min
FROM call_center
GROUP BY call_center
ORDER BY total_calls DESC;
