--Q5. Cost vs Brand preference impact on spending

select cost_over_brand_preference,
COUNT(*) as user_count,
SUM(avg_spend_category) as total_revenue,
AVG(avg_spend_category) as avg_spend_per_user
from [dbo].[ecommerce_user_behavior]
group by cost_over_brand_preference
order by avg_spend_per_user desc