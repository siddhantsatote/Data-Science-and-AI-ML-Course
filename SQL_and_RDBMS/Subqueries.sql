/* ============================================================
   SUBQUERIES IN SQL
   ------------------------------------------------------------
   Purpose:
   - A subquery is a query nested inside another query.
   - They are used to fetch data for conditions, calculations, or filtering.
   ============================================================ */

/* ==========================
   Example 1: Basic Subquery
   --------------------------
   Fetch employees whose salary is greater than that of employee with ID 103.
   ========================== */
SELECT * 
FROM employees 
WHERE salary > (
    SELECT salary 
    FROM employees 
    WHERE employee_id = 103
);

-- **Explanation**:
-- 1. The inner query (`SELECT salary FROM employees WHERE employee_id = 103`) gets the salary of employee 103.
-- 2. The outer query retrieves all employees with a salary greater than that value.

/* ==========================
   Example 2: Single-Row Subqueries
   --------------------------
   a) Employees with the maximum salary.
   ========================== */
SELECT * 
FROM employees 
WHERE salary = (
    SELECT MAX(salary) 
    FROM employees
);

-- **Explanation**:
-- The subquery finds the highest salary. The outer query fetches employees with that salary.

   b) Employees hired on the earliest date.
   --------------------------------------- */
SELECT * 
FROM employees 
WHERE hire_date = (
    SELECT MIN(hire_date) 
    FROM employees
);

-- **Explanation**:
-- 1. `MIN(hire_date)` gets the earliest hire date.
-- 2. The outer query fetches employees hired on that date.

/* ==========================
   Example 3: Multiple-Row Subqueries
   --------------------------
   Subqueries that return multiple values.
   a) Employees with salaries matching those of 'SA_MAN'.
   ========================== */
SELECT * 
FROM employees 
WHERE salary IN (
    SELECT salary 
    FROM employees 
    WHERE job_id = 'SA_MAN'
) 
AND job_id != 'SA_MAN';

-- **Explanation**:
-- 1. The subquery fetches salaries of employees with `job_id = 'SA_MAN'`.
-- 2. The outer query fetches employees with matching salaries but excludes those with `job_id = 'SA_MAN'`.

   b) Employees whose salary is greater than all 'SA_MAN' salaries.
   -------------------------- */
SELECT * 
FROM employees 
WHERE salary > ALL (
    SELECT salary 
    FROM employees 
    WHERE job_id = 'SA_MAN'
);

-- **Explanation**:
-- 1. `> ALL` ensures the salary is greater than the highest salary in the subquery results.
-- 2. Fetches employees earning more than the highest-paid 'SA_MAN'.

   c) Employees whose salary is greater than any 'SA_MAN' salary.
   -------------------------- */
SELECT * 
FROM employees 
WHERE salary > ANY (
    SELECT salary 
    FROM employees 
    WHERE job_id = 'SA_MAN'
);

-- **Explanation**:
-- 1. `> ANY` ensures the salary is greater than at least one of the salaries in the subquery results.
-- 2. Fetches employees earning more than the lowest 'SA_MAN' salary.

/* ==========================
   Example 4: Correlated Subqueries
   --------------------------
   Correlated subqueries reference the outer query.
   a) Employees with the highest salary in their department.
   ========================== */
SELECT * 
FROM employees e1 
WHERE salary = (
    SELECT MAX(salary) 
    FROM employees e2 
    WHERE e2.department_id = e1.department_id
);

-- **Explanation**:
-- 1. The subquery calculates the maximum salary for each `department_id`.
-- 2. The outer query compares each employee's salary with the maximum for their department.

   b) Alternative: Directly group by department.
   --------------------------------------- */
SELECT department_id, MAX(salary) 
FROM employees 
GROUP BY department_id;

-- **Explanation**:
-- Groups employees by `department_id` and directly calculates the maximum salary for each group.

/* ============================================================
   Summary:
   - **Single-Row Subquery**: Returns one result (e.g., MAX, MIN).
   - **Multiple-Row Subquery**: Returns multiple results (use `IN`, `ANY`, `ALL`).
   - **Correlated Subquery**: Refers to the outer query in its WHERE clause.
   ============================================================ */
