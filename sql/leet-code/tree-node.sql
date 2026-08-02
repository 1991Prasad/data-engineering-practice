-- link: https://leetcode.com/problems/tree-node/

/* Write your T-SQL query statement below */
select id, 
case 
    when p_id is null then 'Root' 
    when id in (select p_id from Tree where p_id is not null) then 'Inner'
    else 'Leaf' end as Type 
from Tree