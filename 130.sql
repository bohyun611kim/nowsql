SELECT 
    CASE CategoryCode
        WHEN 'F' THEN 'Fruit'
        WHEN 'V' THEN 'Vegetable'
        ELSE 'Other'
    END AS 'Category',
    COUNT(*) AS 'Count'
FROM
    groceries
GROUP BY CASE CategoryCode
    WHEN 'F' THEN 'Fruit'
    WHEN 'V' THEN 'Vegetable'
    ELSE 'Other'
END