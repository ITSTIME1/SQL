-- 코드를 입력하세요
SELECT 
COUNT(AGE) as 'USERS'
from USER_INFO where YEAR(JOINED) = '2021' and AGE between 20 and 29;
