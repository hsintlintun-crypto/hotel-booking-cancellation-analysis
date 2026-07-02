-- Analysis 3A: Cancel Rate by Market Segment
SELECT 
  market_segment,
  COUNT(*) AS total_bookings,
  SUM(is_canceled) AS canceled_bookings,
  ROUND(SUM(is_canceled)*100.0/COUNT(*), 2) AS cancel_rate_pct,
  ROUND(AVG(adr), 2) AS avg_daily_rate
FROM `my-project-analysis-501211.hotel_data.hotel_bookings`
WHERE market_segment IS NOT NULL
GROUP BY market_segment
ORDER BY cancel_rate_pct DESC;
