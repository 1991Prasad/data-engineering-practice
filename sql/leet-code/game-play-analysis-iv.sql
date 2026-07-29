-- link: https://leetcode.com/problems/game-play-analysis-iv/


/* Write your T-SQL query statement below */
WITH ConsecutiveLoggedIn AS
(
    select *,ROW_NUMBER()OVER(partition by player_id order by event_date) as Rn,
    LEAD(event_date)over(partition by player_id order by event_date) as next_date
    from Activity
)
select ROUND((1.0*count(*)/(select count(distinct player_id) from Activity)),2) as fraction  
from ConsecutiveLoggedIn where DATEDIFF(day, next_date, event_date) = -1 and Rn = 1


