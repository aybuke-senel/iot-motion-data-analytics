-- =========================================
-- IoT Motion Data Analysis (SQL)
-- =========================================

-- 1. Total number of records
SELECT COUNT(*) FROM motion_data;

-- 2. Preview data
SELECT * FROM motion_data LIMIT 5;

-- 3. Activity distribution (walking vs running)
SELECT 
    activity, 
    COUNT(*) AS count
FROM motion_data
GROUP BY activity;

-- 4. Average acceleration values by activity
SELECT 
    activity,
    AVG(acc_x) AS avg_acc_x,
    AVG(acc_y) AS avg_acc_y,
    AVG(acc_z) AS avg_acc_z
FROM motion_data
GROUP BY activity;

-- 5. Acceleration magnitude (feature engineering)
SELECT 
    activity,
    AVG(SQRT(acc_x*acc_x + acc_y*acc_y + acc_z*acc_z)) AS avg_magnitude
FROM motion_data
GROUP BY activity;

-- 6. Magnitude range (min & max)
SELECT 
    activity,
    MIN(SQRT(acc_x*acc_x + acc_y*acc_y + acc_z*acc_z)) AS min_mag,
    MAX(SQRT(acc_x*acc_x + acc_y*acc_y + acc_z*acc_z)) AS max_mag
FROM motion_data
GROUP BY activity;
