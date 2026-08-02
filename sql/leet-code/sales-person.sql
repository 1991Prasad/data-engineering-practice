-- link: https://leetcode.com/problems/sales-person/

/* Write your T-SQL query statement below */
WITH RED_SALESMAN AS
(
    select a.sales_id from Orders a 
    inner join  Company b
    on a.com_id = b.com_id
    where b.name ='RED'
)
select name from SalesPerson where sales_id not in  (select sales_id from RED_SALESMAN)