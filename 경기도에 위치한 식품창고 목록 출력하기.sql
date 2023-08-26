-- 코드를 입력하세요
SELECT 
WAREHOUSE_ID, 
WAREHOUSE_NAME, 
ADDRESS, 
CASE
    WHEN FREEZER_YN is NULL THEN "N"
    ELSE FREEZER_YN
    END AS "FREEZER_YN"
from food_warehouse
where substr(ADDRESS, 1, 3) = "경기도"
order by WAREHOUSE_ID ASC;
