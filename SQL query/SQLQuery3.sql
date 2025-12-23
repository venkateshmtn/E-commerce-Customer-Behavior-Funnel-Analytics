--Q3. Tier-wise customer distribution

select city_tier,
COUNT(*) as customer_count,
CAST(COUNT(*)*100/SUM(COUNT(*)) over() as decimal(5,2)) 
as percentage_distribution
from [dbo].[ecommerce_user_behavior]
group by city_tier
order by customer_count desc