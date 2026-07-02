-- Analysis 1: Monthly Cancel Rate
-- Finding: June has highest cancellation rate at 41.46%
SELECT 
  arrival_date_month,
  COUNT(*) AS total_bookings,
  SUM(is_canceled) AS canceled_bookings,
  ROUND(SUM(is_canceled)*100.0/COUNT(*), 2) AS cancel_rate_pct
FROM `my-project-analysis-501211.hotel_data.hotel_bookings`
GROUP BY arrival_date_month
ORDER BY cancel_rate_pct DESC;
