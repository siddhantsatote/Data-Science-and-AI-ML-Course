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

-- **Explanation**:
-- 1. `COUNT(first_name)` counts all non-null values in `first_name`.
-- 2. `COUNT(commission_pct)` counts all non-null commission values.
-- 3. `COUNT(DISTINCT commission_pct)` counts unique commission values.

/* ==========================
   Example 5: Joining Rows with `LISTAGG`
   --------------------------
   Create a comma-separated list of employee names.
   ========================== */
SELECT 
    LISTAGG(first_name, ',') WITHIN GROUP (ORDER BY salary) AS all_names_ordered_by_salary
FROM employees;

-- **Explanation**:
-- 1. `LISTAGG(column, 'delimiter') WITHIN GROUP (ORDER BY column)` concatenates rows.
-- 2. Orders employee names by salary while concatenating.

/* ==========================
   Example 6: Group By Department
   --------------------------
   Find count of employees, maximum salary, and list of names for each department.
   ========================== */
SELECT 
    department_id, 
    COUNT(employee_id) AS employee_count, 
    MAX(salary) AS max_salary, 
    LISTAGG(first_name || ',' || salary) WITHIN GROUP (ORDER BY salary) AS employee_details
FROM employees 
GROUP BY department_id;

-- **Explanation**:
-- 1. Groups employees by `department_id`.
-- 2. Calculates employee count and maximum salary.
-- 3. Lists employees and their salaries for each department.

/* ==========================
   Example 7: Minimum Salary by Job and Employee Count
   --------------------------
   Filter jobs and calculate statistics for specific roles.
   ========================== */
SELECT 
    job_id, 
    MIN(salary) AS min_salary, 
    COUNT(employee_id) AS employee_count,
    LISTAGG(first_name, ',') WITHIN GROUP (ORDER BY salary) AS employees
FROM employees 
WHERE job_id IN ('FI_ACCOUNT', 'SA_MAN', 'SA_REP', 'IT_PROG')
GROUP BY job_id;

-- **Explanation**:
-- 1. Filters specific `job_id` values.
-- 2. Groups by job and calculates minimum salary, count, and employee names.

/* ==========================
   Example 8: Having Clause
   --------------------------
   Filter grouped results based on aggregate conditions.
   ========================== */
SELECT 
    job_id, 
    MIN(salary) AS min_salary, 
    COUNT(employee_id) AS employee_count,
    LISTAGG(first_name, ',') WITHIN GROUP (ORDER BY salary) AS employees
FROM employees 
WHERE job_id IN ('AC_MGR', 'SA_MAN', 'FI_MGR')
GROUP BY job_id 
HAVING MIN(salary) > 10000;

-- **Explanation**:
-- 1. Uses `HAVING` to filter results after grouping.
-- 2. Includes only groups where `MIN(salary)` exceeds 10,000.

/* ==========================
   Example 9: Employees Hired on the Same Date
   --------------------------
   Identify hire dates with multiple employees.
   ========================== */
SELECT 
    hire_date, 
    COUNT(employee_id) AS employee_count
FROM employees 
GROUP BY hire_date 
HAVING COUNT(employee_id) > 1;

-- **Explanation**:
-- 1. Groups employees by `hire_date`.
-- 2. Filters dates where more than one employee was hired.

/* ============================================================
   Summary:
   - `GROUP BY`: Groups rows by specified columns.
   - Aggregate functions (`AVG`, `SUM`, `MIN`, `MAX`, `COUNT`): Process multiple rows into one result.
   - `HAVING`: Filters groups based on aggregate results.
   - `LISTAGG`: Concatenates row values into a single string.
   ============================================================ */
