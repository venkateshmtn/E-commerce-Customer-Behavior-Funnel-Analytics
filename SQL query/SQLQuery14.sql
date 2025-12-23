--Q14. Who should receive premium offers?
select age,gender,city_tier,financial_status,product_category,
monthly_shopping_frequency,decision_time,avg_spend_category,
case when avg_spend_category>=5000
and monthly_shopping_frequency in ('frequently','occasionally')
and decision_time in ('within 1 day','1-2 days','3-7 days')
then 'Premium'
else 'Regular'
end as customer_type
from [dbo].[ecommerce_user_behavior]