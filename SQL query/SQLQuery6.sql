--Q6. Drop-off indicator (slow decision makers)
select COUNT(*) as slow_decision_users,
CAST(COUNT(*)*100/(select COUNT(*) from ecommerce_user_behavior) as 
decimal(5,2)) as drop_off_percentage
from [dbo].[ecommerce_user_behavior]
where decision_time = 'more than 1 month'