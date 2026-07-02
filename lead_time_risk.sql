-- Analysis 2: Lead Time vs Cancel Rate
-- Finding: Bookings made 180+ days in advance have 50%+ cancel rate
SELECT 
  CASE 
    WHEN lead_time BETWEEN 0 AND 7 THEN '0-7 days'
    WHEN lead_time BETWEEN 8 AND 30 THEN '8-30 days' 
    WHEN lead_time BETWEEN 31 AND 90 THEN '31-90 days'
    WHEN lead_time BETWEEN 91 AND 180 THEN '91-180 days'
    ELSE '180+ days'
  END AS lead_time_group,
  COUNT(*) AS total_bookings,
  SUM(is_canceled) AS canceled_bookings,
  ROUND(SUM(is_canceled)*100.0/COUNT(*), 2) AS cancel_rate_pct
FROM `my-project-analysis-501211.hotel_data.hotel_bookings`
GROUP BY lead_time_group
ORDER BY cancel_rate_pct DESC;
