--Q1. Which age group contributes the highest revenue?

select 
case
    when age < 18 then 'Teen'
	when age between 18 and 25 then 'Young Adult'
	when age between 26 and 35 then 'Adult'
	when age between 36 and 50 then 'Mid Age'
	else 'Senior'
	end as age_group,
	sum(avg_spend_category) as total_revenue,
	COUNT(*) as user_count,
	avg(avg_spend_category) as avg_rev_per_user
from [dbo].[ecommerce_user_behavior]
group by
case
    when age < 18 then 'Teen'
	when age between 18 and 25 then 'Young Adult'
	when age between 26 and 35 then 'Adult'
	when age between 36 and 50 then 'Mid Age'
	else 'Senior'
	end 
order by total_revenue desc
