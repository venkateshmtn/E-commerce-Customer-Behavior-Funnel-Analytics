--Q15. Which segment is price sensitive?
select financial_status,city_tier,
COUNT(*) as price_sensitive_users
from [dbo].[ecommerce_user_behavior]
where cost_over_brand_preference='Yes'
group by financial_status,city_tier
order by price_sensitive_users desc