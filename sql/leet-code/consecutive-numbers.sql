-- link: https://leetcode.com/problems/consecutive-numbers/description/

/* Write your T-SQL query statement below */
select distinct num as ConsecutiveNums from 
(select num
,lead(num)over(order by id) as lead
,lag(num)over(order by id) as lag
from logs)A
where num = lead and lead = lag