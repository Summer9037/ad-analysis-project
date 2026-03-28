CTR计算
SELECT 
    COUNT(*) AS impressions,
    SUM(clk) AS clicks,
    SUM(clk)::float / COUNT(*) AS ctr
FROM raw_sample;

用户分析
SELECT 
    u.age_level,
    SUM(r.clk)::float / COUNT(*) AS ctr
FROM raw_sample r
JOIN user_profile u
ON r."user" = u.userid
GROUP BY u.age_level;

广告主分析
SELECT 
    a.customer,
    SUM(r.clk)::float / COUNT(*) AS ctr
FROM raw_sample r
JOIN ad_feature a
ON r.adgroup_id = a.adgroup_id
GROUP BY a.customer;