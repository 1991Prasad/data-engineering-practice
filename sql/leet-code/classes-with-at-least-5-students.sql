-- link: https://leetcode.com/problems/classes-with-at-least-5-students/

/* Write your T-SQL query statement below */

select class from
(
select class,count(*) as Cnt from Courses
group by class 
)A
where Cnt>=5