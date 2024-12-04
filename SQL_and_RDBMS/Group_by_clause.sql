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
