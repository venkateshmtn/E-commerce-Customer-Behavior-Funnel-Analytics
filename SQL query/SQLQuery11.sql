--Q11. OTT usage vs engagement
 
 select ott_subscription,monthly_shopping_frequency,
 COUNT(*) as user_count
 from [dbo].[ecommerce_user_behavior] 
 where ott_subscription is not null
 group by ott_subscription,monthly_shopping_frequency
 order by ott_subscription, user_count desc