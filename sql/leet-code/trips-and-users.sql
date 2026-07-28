-- link: https://leetcode.com/problems/trips-and-users/

/* Write your T-SQL query statement below */
WITH CancelRideCTE AS
(
    select request_at as Day,count(*) as CancelledTotalCount
    from Trips a 
    left join users b
    on (a.client_id = b.users_id  )
    left join users c
    on a.driver_id = c.users_id 
    where b.banned = 'No' 
    AND c.banned = 'No'
    AND Status <> 'completed'
    AND request_at between '2013-10-01' AND '2013-10-03'
    group by request_at

),TotalRideCTE AS
( 
    select request_at as Day,count(*) as TotalCount
    from Trips a 
    left join users b
    on (a.client_id = b.users_id  )
    left join users c
    on a.driver_id = c.users_id 
    where b.banned = 'No' 
    AND request_at between '2013-10-01' AND '2013-10-03'
    group by request_at
)
select a.Day,ISNULL(ROUND((1.0*CancelledTotalCount/TotalCount),2),0.00)   as [Cancellation Rate]
from TotalRideCTE a 
Left join CancelRideCTE b
on a.Day = b.Day
