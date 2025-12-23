--Q9. Electronics vs Fashion customer behaviour

select product_category,
COUNT(*) as user_count,
SUM(avg_spend_category) as total_revenue,
AVG(avg_spend_category) as avg_spend_per_user
from [dbo].[ecommerce_user_behavior]
where product_category in ('electronics','fashion')
group by product_category
order by total_revenue desc