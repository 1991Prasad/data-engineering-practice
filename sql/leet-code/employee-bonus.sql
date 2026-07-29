-- link:https://leetcode.com/problems/employee-bonus/


/* Write your T-SQL query statement below */
WITH BonusCTE AS
(
    select a.name,b.bonus from Employee a 
    left join Bonus b 
    on a.empId = b.empId
)
select name,bonus from BonusCTE where bonus < 1000 or bonus is null