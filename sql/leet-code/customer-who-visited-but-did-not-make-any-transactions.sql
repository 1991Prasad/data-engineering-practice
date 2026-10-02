-- link - https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/?envType=study-plan-v2&envId=top-sql-50

select a.customer_id,count(*) as count_no_trans 
from Visits a 
left join Transactions b 
on a.visit_id = b.visit_id
where b.transaction_id is null
group by a.customer_id