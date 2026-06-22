-- sentiment_distribution.sql
SELECT sentiment, COUNT(*) AS calls_count
FROM call_center
GROUP BY sentiment
ORDER BY calls_count DESC;
