-- link: https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/

/* Write your T-SQL query statement below */
select top 1 customer_number from 
(
select customer_number,COUNT(*) as CNT_customer_number from Orders
group by customer_number 
)A
order by CNT_customer_number desc 