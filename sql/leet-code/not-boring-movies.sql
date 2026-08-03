-- link: https://leetcode.com/problems/not-boring-movies/

/* Write your T-SQL query statement below */
select id,movie,description,rating from Cinema where id % 2 =1 and description not in ('boring') order by rating desc