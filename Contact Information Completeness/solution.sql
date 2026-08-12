SELECT CAST(SUM(CASE WHEN phone_number IS NULL THEN 1 ELSE 0 END) AS FLOAT) 
    / COUNT(*) AS null_phone_ratio
FROM techcorp_workforce;
