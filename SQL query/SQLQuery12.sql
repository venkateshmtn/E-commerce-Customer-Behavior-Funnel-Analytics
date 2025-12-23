--Q12. Peak shopping hours

select hour,
COUNT(*) as user_count
from [dbo].[ecommerce_user_behavior]
group by hour
order by user_count desc