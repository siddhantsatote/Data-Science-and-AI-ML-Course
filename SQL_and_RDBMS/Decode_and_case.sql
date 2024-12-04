/* ============================================================
   USING DECODE FUNCTION IN SQL
   ------------------------------------------------------------
   Syntax: 
   DECODE(column, search1, result1, search2, result2, ..., default)
   - Evaluates `column` against the search values.
   - Returns the corresponding result when a match is found.
   - Returns the default value if no match is found.
   ============================================================ */

/* ==========================
   Example 1: Salary Increment Based on Job Role
   --------------------------
   Scenario: 
   - If `job_id` is 'SA_MAN', increment salary by 1.2.
   - If `job_id` is 'SA_REP', increment salary by 1.3.
   - If `job_id` is 'IT_PROG', increment salary by 1.4.
   - For other roles, increment is 0.
   ========================== */
SELECT 
    first_name AS employee_name,
    job_id AS job_role,
    salary AS original_salary,
    DECODE(
        job_id,
        'SA_MAN', salary * 1.2,
        'SA_REP', salary * 1.3,
        'IT_PROG', salary * 1.4,
        0
    ) AS incremented_salary
FROM employees;

-- **Explanation**:
-- 1. `DECODE` checks the value of `job_id`.
-- 2. Depending on the match, it applies the corresponding salary increment formula.
-- 3. If no match is found, it defaults to 0.

-- **Practical Use**: Determine salary adjustments based on employee roles dynamically.

/* ==========================
   Example 2: Assigning Grades Based on Department ID
   --------------------------
   Scenario:
   - If `department_id` is 90, assign grade 'A'.
   - If `department_id` is 80, assign grade 'B'.
   - If `department_id` is 50, assign grade 'C'.
   - For other values, assign grade 'Not Found'.
   ========================== */
SELECT 
    first_name AS employee_name,
    department_id,
    DECODE(
        department_id,
        90, 'A',
        80, 'B',
        50, 'C',
        'Not Found'
    ) AS grade
FROM employees;

-- **Explanation**:
-- 1. `DECODE` evaluates the `department_id` column.
-- 2. Depending on the department, it assigns a grade.
-- 3. If the department does not match the listed IDs, it defaults to 'Not Found'.

-- **Practical Use**: Automatically categorize employees into grades based on their department.

/* ==========================
   Additional Insights:
   --------------------------
   - `DECODE` is similar to a CASE statement but more compact.
   - It's useful for straightforward, conditional replacements or calculations.
   ========================== */

/* ==========================
   BONUS QUERY:
   --------------------------
   Display both examples in one query for comparison.
   ========================== */
SELECT 
    first_name AS employee_name,
    job_id AS job_role,
    salary AS original_salary,
    DECODE(
        job_id,
        'SA_MAN', salary * 1.2,
        'SA_REP', salary * 1.3,
        'IT_PROG', salary * 1.4,
        0
    ) AS incremented_salary,
    department_id,
    DECODE(
        department_id,
        90, 'A',
        80, 'B',
        50, 'C',
        'Not Found'
    ) AS grade
FROM employees;
