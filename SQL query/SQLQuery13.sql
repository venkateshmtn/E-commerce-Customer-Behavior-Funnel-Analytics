--Q13. Weekend vs weekday behaviour
 
 select COUNT(*) AS user_count,
        case when day_name in ('Saturday','Sunday') then 'Weekend'
		else 'Weekday'
		end as day_type
 from [dbo].[ecommerce_user_behavior]
 GROUP BY
    CASE
        WHEN day_name IN ('Saturday', 'Sunday') THEN 'Weekend'
        ELSE 'Weekday'
    END
ORDER BY user_count DESC