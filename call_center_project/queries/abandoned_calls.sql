-- abandoned_calls.sql
-- Calls with low CSAT (<=2) or response_time marked 'Above SLA'
SELECT id, customer_name, csat_score, response_time, call_center
FROM call_center
WHERE (csat_score IS NOT NULL AND csat_score <= 2)
   OR response_time = 'Above SLA';
