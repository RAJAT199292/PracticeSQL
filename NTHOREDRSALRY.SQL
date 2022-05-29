CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        /* Write your T-SQL query statement below. */
        
    SELECT TOP 1 Salary
        FROM
        (
            SELECT Salary, DENSE_RANK() OVER (ORDER BY Salary DESC) AS Rn
            FROM Employee 
        ) a
        WHERE a.Rn = @N
        
    );
END