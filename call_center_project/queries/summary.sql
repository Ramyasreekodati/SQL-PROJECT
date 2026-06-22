-- summary.sql
-- Basic summary statistics for the Call Center data
SELECT COUNT(*) AS total_calls,
       COUNT(DISTINCT customer_name) AS unique_customers,
       AVG(csat_score) AS avg_csat_score,
       AVG(call_duration_minutes) AS avg_call_duration_minutes
FROM call_center;
