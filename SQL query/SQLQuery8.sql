--Q8. Category-wise revenue contribution

select product_category,
SUM(avg_spend_category) as total_revenue,
CAST(SUM(avg_spend_category)*100/SUM(SUM(avg_spend_category)) over() as decimal(5,2))
as revenue_percentage
from [dbo].[ecommerce_user_behavior]
group by product_category
