-- A company's executives are interested in seeing who earns the most money in each of the company's departments. A high earner in a department is an employee who has a salary in the top three unique salaries for that department.

-- Write an SQL query to find the employees who are high earners in each of the departments.

-- Return the result table in any order

/* Write your T-SQL query statement below */
SELECT
        WNDW.DEPARTMENT, WNDW.EMPLOYEE, WNDW.SALARY 
      FROM
        (
            
            
            SELECT
                EMPLOYEE,
                SALARY,
                DEPARTMENT,
                DENSE_RANK() OVER(PARTITION BY DEPARTMENT ORDER BY SALARY DESC) RNK
            FROM
            
            
            
                (SELECT B.Name as DEPARTMENT, A.Name as EMPLOYEE, A.Salary as SALARY
                    FROM 
                    Employee as A LEFT JOIN
                    Department as B on A.DepartmentId = B.Id ) EMPLOYEE
        ) WNDW
        
 
        WHERE WNDW.RNK < 4