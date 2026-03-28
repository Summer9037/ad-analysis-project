年龄 + pvalue 分析
SELECT 
    u.age_level,
    u.pvalue_level,
    SUM(r.clk)::float / COUNT(*) AS ctr,
    COUNT(*) AS impressions
FROM raw_sample r
JOIN user_profile u
ON r."user" = u.userid
GROUP BY u.age_level, u.pvalue_level
HAVING COUNT(*) >= 10000
ORDER BY ctr DESC;