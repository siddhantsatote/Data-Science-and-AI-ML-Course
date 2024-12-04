/* ============================================================
   SQL SET OPERATORS
   ------------------------------------------------------------
   Purpose:
   Combine the results of two or more queries.
   - UNION: Combines unique records from both queries.
   - UNION ALL: Combines all records, including duplicates.
   - INTERSECT: Retrieves only the common records.
   - MINUS: Retrieves unique records from the first query that are not in the second.
   ============================================================ */

/* ==========================
   1. UNION: Combine unique records
   --------------------------
   Retrieve all unique `department_id`s from both the `employees` and `departments` tables.
   ========================== */
SELECT department_id 
FROM employees 
UNION
SELECT department_id 
FROM departments;

-- **Explanation**:
-- 1. The `UNION` operator removes duplicates.
-- 2. The result includes unique `department_id`s present in either table.

-- Example Result:
-- | department_id |
-- |---------------|
-- | 10            |
-- | 20            |
-- | 30            |

/* ==========================
   2. UNION ALL: Combine all records (duplicates included)
   --------------------------
   Retrieve all `department_id`s from both tables, including duplicates.
   ========================== */
SELECT department_id 
FROM employees 
UNION ALL
SELECT department_id 
FROM departments;

-- **Explanation**:
-- 1. The `UNION ALL` operator does not remove duplicates.
-- 2. All records from both queries are included.

-- Example Result:
-- | department_id |
-- |---------------|
-- | 10            |
-- | 20            |
-- | 10            | (Duplicate from the second table)

/* ==========================
   3. INTERSECT: Retrieve common records
   --------------------------
   Find the `department_id`s common to both tables.
   ========================== */
SELECT department_id 
FROM employees 
INTERSECT
SELECT department_id 
FROM departments;

-- **Explanation**:
-- 1. The `INTERSECT` operator retrieves only records present in both queries.
-- 2. Useful for finding overlapping data.

-- Example Result:
-- | department_id |
-- |---------------|
-- | 10            |
-- | 20            |

/* ==========================
   4. MINUS: Retrieve unique records from the first query
   --------------------------
   a) `department_id`s in `employees` but not in `departments`.
   ========================== */
SELECT department_id 
FROM employees 
MINUS
SELECT department_id 
FROM departments;

-- **Explanation**:
-- 1. The `MINUS` operator retrieves records from the first query that are not in the second query.
-- 2. In this example, it finds departments that only exist in the `employees` table.

-- Example Result:
-- | department_id |
-- |---------------|
-- | 30            |

   b) `department_id`s in `departments` but not in `employees`.
   ---------------------------------------------------------- */
SELECT department_id 
FROM departments 
MINUS
SELECT department_id 
FROM employees;

-- **Explanation**:
-- Finds departments that exist in the `departments` table but not in `employees`.

-- Example Result:
-- | department_id |
-- |---------------|
-- | 40            |

/* ==========================
   Advanced Use Case: Combining Aggregates
   --------------------------
   Retrieve employees whose salary is either the minimum or maximum salary.
   ========================== */
SELECT * 
FROM employees 
WHERE salary IN (
    SELECT MIN(salary) FROM employees
    UNION
    SELECT MAX(salary) FROM employees
);

-- **Explanation**:
-- 1. The subquery uses `UNION` to combine the minimum and maximum salary values.
-- 2. The outer query retrieves employees earning those salaries.

-- Example Result:
-- | employee_id | first_name | salary |
-- |-------------|------------|--------|
-- | 101         | John       | 5000   | (Minimum salary)
-- | 110         | Sarah      | 24000  | (Maximum salary)

/* ============================================================
   Notes:
   - Use `UNION` when you want to avoid duplicates.
   - Use `UNION ALL` when duplicates matter (e.g., performance or data tracking).
   - Use `INTERSECT` to find common data between two sets.
   - Use `MINUS` to find differences between two sets.
   ============================================================ */
