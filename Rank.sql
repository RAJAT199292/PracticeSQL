-- Write a SQL query to rank scores. If there is a tie between two scores, both should have the same ranking. Note that after a tie, the next ranking number should be the next consecutive integer value. In other words, there should be no "holes" between ranks.

/* Write your T-SQL query statement below */
SELECT Score, DENSE_RANK() OVER (ORDER BY Score DESC) AS "Rank" FROM Scores