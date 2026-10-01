--link - https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/?envType=study-plan-v2&envId=top-sql-50


/* Write your T-SQL query statement below */

select b.unique_id,name 
from Employees a 
left join EmployeeUNI b
on a.id =b.id 
