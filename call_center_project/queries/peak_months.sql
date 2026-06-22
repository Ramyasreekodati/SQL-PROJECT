-- peak_months.sql
-- Calls per month (derived from call_timestamp MM/DD/YYYY)
SELECT substr(call_timestamp,7,4) AS year,
       substr(call_timestamp,1,2) AS month,
       COUNT(*) AS calls_count
FROM call_center
GROUP BY year, month
ORDER BY year, month;
