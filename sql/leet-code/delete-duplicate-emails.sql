-- link: https://leetcode.com/problems/delete-duplicate-emails/

/* Write your T-SQL query statement below */

WITH CTE AS
(
    SELECT *,ROW_NUMBER()OVER(PARTITION BY EMAIL ORDER BY ID) AS RN FROM PERSON
)
DELETE FROM CTE WHERE RN>1


