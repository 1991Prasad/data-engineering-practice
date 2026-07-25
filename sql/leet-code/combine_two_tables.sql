-- question link: https://leetcode.com/problems/combine-two-tables/description/

/* Write your T-SQL query statement below */

select firstname,lastname,city,state 
from Person a 
left join Address b 
on a.personId = b.personId
