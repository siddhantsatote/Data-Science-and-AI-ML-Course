/* ============================================================
   MULTIPLE-ROW (GROUP) FUNCTIONS IN SQL
   ------------------------------------------------------------
   Purpose:
   - Process multiple values and return a single aggregated result.
   ============================================================ */

/* ==========================
   Example 1: Average Salary
   --------------------------
   Calculate the average salary of employees.
   ========================== */
SELECT 
    AVG(salary) AS average_salary, 
    AVG(DISTINCT salary) AS avg_distinct_salary 
FROM employees;

-- **Explanation**:
-- 1. `AVG(salary)` calculates the overall average salary.
-- 2. `AVG(DISTINCT salary)` excludes duplicate salaries before averaging.

/* ==========================
   Example 2: Total Salary
   --------------------------
   Calculate the total salary.
   ========================== */
SELECT 
    SUM(salary) AS total_salary, 
    SUM(DISTINCT salary) AS sum_distinct_salary 
FROM employees;

-- **Explanation**:
-- 1. `SUM(salary)` sums up all the salaries.
-- 2. `SUM(DISTINCT salary)` excludes duplicate salaries during summation.

/* ==========================
   Example 3: Minimum and Maximum Values
   --------------------------
   Find the minimum and maximum salary, first name, and hire date.
   ========================== */
SELECT 
    MIN(salary) AS min_salary, 
    MAX(salary) AS max_salary,
    MIN(first_name) AS min_first_name, 
    MAX(first_name) AS max_first_name,
    MIN(hire_date) AS earliest_hire_date, 
    MAX(hire_date) AS latest_hire_date
FROM employees;

-- **Explanation**:
-- `MIN` and `MAX` can be applied to numeric, string, and date columns.

/* ==========================
   Example 4: Counting Rows
   --------------------------
   Count various elements in the `employees` table.
   ========================== */
SELECT 
    COUNT(first_name) AS count_of_first_names,
    COUNT(commission_pct) AS count_with_commission_pct,
    COUNT(DISTINCT commission_pct) AS distinct_commission_values
FROM employees;
