-- 코드를 입력하세요
SELECT 
PT_NAME,
PT_NO,
GEND_CD,
AGE,
CASE
    WHEN TLNO is null then 'NONE'
    ELSE TLNO
    END AS 'TLNO'
from PATIENT where GEND_CD = 'W' and AGE < 13
order by AGE DESC, PT_NAME ASC;
