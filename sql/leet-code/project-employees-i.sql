-- link: https://leetcode.com/problems/project-employees-i/



/* Write your T-SQL query statement below */
select a.project_id,ROUND((1.0 * SUM(b.experience_years)/COUNT(b.experience_years)),2) as average_years
from Project a 
inner join Employee b 
on a.employee_id = b.employee_id
group by a.project_id