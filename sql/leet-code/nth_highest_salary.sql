-- link: https://leetcode.com/problems/nth-highest-salary/description/

CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        /* Write your T-SQL query statement below. */
        select max(salary) from (select salary,DENSE_RANK()over(order by salary desc) as rn from Employee)a where rn=@N

    );
END