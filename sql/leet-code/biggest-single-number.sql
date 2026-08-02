-- link:https://leetcode.com/problems/biggest-single-number/

/* Write your T-SQL query statement below */

select max(num) as num from MyNumbers where num not in 
(select num from  
(
    select *,row_number()over(partition by num order by num desc) as Rn from MyNumbers
)A
where Rn >1)