
-- link:  https://leetcode.com/problems/managers-with-at-least-5-direct-reports/

/* Write your T-SQL query statement below */
WITH CTE AS
(
    select a.*,b.name as ManagerName, row_number()over(partition by a.managerId order by b.name) as Rn from Employee a 
    inner join Employee b 
    on a.managerId = b.id

)
select ManagerName as name from CTE where Rn=5
