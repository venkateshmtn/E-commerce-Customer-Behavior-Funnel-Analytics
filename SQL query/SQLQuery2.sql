--Q2. Gender-wise shopping behaviour
select gender,
sum(avg_spend_category) as total_revenue,
avg(avg_spend_category) as avg_spend_per_user
from [dbo].[ecommerce_user_behavior] 
group by gender
order by total_revenue desc