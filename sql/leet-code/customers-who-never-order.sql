-- link: https://leetcode.com/problems/customers-who-never-order/

/* Write your T-SQL query statement below */
select a.name as Customers from Customers a 
left join Orders b 
on a.id = b.customerId
where b.id is null