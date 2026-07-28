-- link: https://leetcode.com/problems/rising-temperature/

/* Write your T-SQL query statement below */
WITH CTE AS
(
select *,LAG(temperature)OVER(order by id) as prev_temp from Weather
)
SELECT ID from CTE WHERE temperature>prev_temp