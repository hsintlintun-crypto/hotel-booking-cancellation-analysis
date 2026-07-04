# Hotel Booking Cancellation Analysis: OTA Case Study
### Business Problem
Online Travel Agencies face 37% average booking cancellation rates, directly
impacting partner hotel revenue and platform commissions.

### My Approach
Analyzed 119,390 hotel bookings using BigQuery SQL and Python to identify
cancellation drivers. Built data pipeline: Kaggle → BigQuery → GitHub.

### Tools Used
**BigQuery**: Processed 119K rows with SQL aggregations
**SQL**: GROUP BY, CASE WHEN, HAVING for segment analysis
**Python**: Pandas, Matplotlib for EDA
**GitHub**: Version control for SQL scripts

### Key Findings

1.**June has 41.46% cancel rate vs 37% average** - Peak summer risk

2.**180+ days lead time: 52%+ cancel rate** - Long bookings are 3x riskier

3.**Groups segment: 62.19% cancel rate** - Highest risk customer type

4.**Online TA: 36.76% vs Direct: 17.25%** - OTA bookings are 2x riskier

### Business Recommendations
1.**Summer Strategy**: Increase overbooking to 45% for June-August
2.**Deposit Policy**: Require 30% deposit for 90+ days lead time bookings
3.**Segment Pricing**: Push non-refundable rates for Groups segment
### SQL Files
sql/monthly_cancel_rate.sql - Seasonality analysis
sql/lead_time_risk.sql - Booking window risk
sql/segment_country_risk.sql - Customer segment analysis
### View Full Analysis
Kaggle Notebook: https://www.kaggle.com/code/hsintlintun/analysis-1-monthly-cancel-rate
