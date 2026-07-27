-- link: https://leetcode.com/problems/rank-scores/description/

/* Write your T-SQL query statement below */

select score,dense_rank()over(order by score desc) as rank from Scores 