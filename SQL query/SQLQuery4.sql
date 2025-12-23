--Q4. Decision time vs spend (conversion efficiency)

select decision_time,
COUNT(*) as user_count,
SUM(avg_spend_category) as total_revenue,
AVG(avg_spend_category) as avg_spend_per_user
from [dbo].[ecommerce_user_behavior]
group by decision_time
order by avg_spend_per_user desc