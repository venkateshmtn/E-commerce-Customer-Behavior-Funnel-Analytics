--Q10. Low engagement users (churn risk)

SELECT
    age,
    gender,
    city_tier,
    financial_status,
    product_category,
    monthly_shopping_frequency,
    decision_time,
    COUNT(*) AS churn_risk_users
FROM ecommerce_user_behavior
WHERE
    monthly_shopping_frequency = 'rarely'
    OR decision_time IN ('more than 1 month', '2–4 weeks', '1–2 weeks')
GROUP BY
    age,
    gender,
    city_tier,
    financial_status,
    product_category,
    monthly_shopping_frequency,
    decision_time
ORDER BY churn_risk_users DESC;
