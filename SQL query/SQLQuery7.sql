--Q7. Most purchased product category

select product_category,
COUNT(*) as purchase_count
from [dbo].[ecommerce_user_behavior]
group by product_category
order by purchase_count desc
