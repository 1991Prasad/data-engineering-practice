-- link: https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/

-- /* Write your T-SQL query statement below */

WITH OG_CTE as
(
    select requester_id as id, count(*) as cnt 
    from RequestAccepted
    group by requester_id
UNION ALL
    select accepter_id as id,count(*) as cnt 
    from RequestAccepted
    group by accepter_id
)
select top 1 id,sum(cnt) as num from OG_CTE
group by id 
order by num desc
