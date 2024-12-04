/* ============================================================
   NULL-RELATED FUNCTIONS IN SQL
   These functions handle NULL values effectively.
   ============================================================ */

/* ==========================
   NVL Function
   --------------------------
   Syntax: NVL(exp1, exp2)
   - If `exp1` is NULL, it returns `exp2`.
   - Otherwise, it returns `exp1`.
   ========================== */

-- Example: Replace NULL values in the commission_pct column with 1
SELECT 
    commission_pct AS original_value,
    NVL(commission_pct, 1) AS handled_null_value
FROM employees;

-- Practical Usage:
-- If an employee doesn't have a commission percentage, set it to 1% by default.

/* ==========================
   NVL2 Function
   --------------------------
   Syntax: NVL2(exp1, exp2, exp3)
   - If `exp1` is NOT NULL, it returns `exp2`.
   - If `exp1` IS NULL, it returns `exp3`.
   ========================== */

-- Example: Check if commission_pct is available or not
SELECT 
    commission_pct AS original_value,
    NVL2(commission_pct, 'available', 'not available') AS availability_status
FROM employees;

-- Practical Usage:
-- Identify employees with available commission percentages and tag others as "not available."

/* ==========================
   NULLIF Function
   --------------------------
   Syntax: NULLIF(exp1, exp2)
   - If `exp1` is equal to `exp2`, it returns NULL.
   - Otherwise, it returns `exp1`.
   ========================== */

-- Example 1: Compare two strings
SELECT 
    NULLIF('sql', 'sqlplus') AS result
FROM dual;

-- Example 2: Compare the lengths of first_name and last_name columns
SELECT 
    LENGTH(first_name) AS first_name_length,
    LENGTH(last_name) AS last_name_length,
    NULLIF(LENGTH(first_name), LENGTH(last_name)) AS comparison_result
FROM employees;

-- Practical Usage:
-- Detect if two fields are identical and handle them accordingly, returning NULL when they match.

/* ==========================
   COALESCE Function
   --------------------------
   Syntax: COALESCE(exp1, exp2, ..., expn)
   - Returns the first NOT NULL value in the provided list.
   - If all expressions are NULL, it returns NULL.
   ========================== */

-- Example 1: Find the first non-NULL value in a series of values
SELECT 
    COALESCE(6, NULL, NULL, NULL, 3, 4, 5) AS first_non_null_value
FROM dual;

-- Example 2: Use COALESCE with columns
-- If commission_pct is NULL, return salary; if salary is also NULL, return 1.
SELECT 
    commission_pct AS commission,
    salary AS base_salary,
    COALESCE(commission_pct, salary, 1) AS resolved_value
FROM employees;

-- Practical Usage:
-- Use COALESCE to create a fallback mechanism for missing data, ensuring a meaningful output.
