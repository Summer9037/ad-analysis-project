CREATE TABLE raw_sample (
    user_id INT,
    time_stamp BIGINT,
    adgroup_id INT,
    pid VARCHAR(50),
    clk INT
);

CREATE TABLE ad_feature (
    adgroup_id INT,
    cate_id INT,
    campaign_id INT,
    brand INT,
    customer INT,
    price NUMERIC
);

CREATE TABLE user_profile (
    userid INT,
    age_level INT,
    pvalue_level INT,
    final_gender_code INT
);