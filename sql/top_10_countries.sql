-- Analysis 3B: Top 10 Countries by Cancel Rate
SELECT 
  country,
  COUNT(*) AS total_bookings,
  SUM(is_canceled) AS canceled_bookings,
  ROUND(SUM(is_canceled)*100.0/COUNT(*), 2) AS cancel_rate_pct
FROM `my-project-analysis-501211.hotel_data.hotel_bookings`
WHERE country IS NOT NULL
GROUP BY country
HAVING COUNT(*) > 500  -- Booking 500 ထက်များတဲ့ နိုင်ငံပဲ ကြည့်မယ်
ORDER BY cancel_rate_pct DESC
LIMIT 10;
