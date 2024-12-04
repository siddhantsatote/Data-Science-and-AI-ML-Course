/* ============================================================
   SQL JOINS: Combining data from two or more tables based on related columns.
   ------------------------------------------------------------
   Types of Joins:
   1. **Natural Join**: Joins tables based on all columns with the same name.
   2. **Inner Join**: Joins tables based on a specific common column.
   3. **Equi Join**: Join using `=` (Equality operator).
   4. **Self Join**: Joins a table with itself.
   5. **Non-Equi Join**: Join using a non-equality condition.
   6. **Outer Joins**:
      - Left Outer Join: Keeps all records from the left table.
      - Right Outer Join: Keeps all records from the right table.
      - Full Outer Join: Keeps records from both tables.

   ============================================================ */

/* ==========================
   1. NATURAL JOIN
   --------------------------
   Joins tables using all common columns with the same name.
   Example: Combining `employees`, `departments`, and `locations` tables based on common columns.
   ========================== */
SELECT * 
FROM employees 
NATURAL JOIN departments 
NATURAL JOIN locations;

-- **Explanation**:
-- 1. The `NATURAL JOIN` automatically joins on all columns that have the same name in both tables.
-- 2. If `employees`, `departments`, and `locations` share columns like `department_id`, the join will be made on these.

-- Example Result: Combines employee, department, and location data.

  
/* ==========================
   2. INNER JOIN (or simply JOIN)
   --------------------------
   Joins tables by matching records with a specific common column.
   Example: Combine employees, departments, and locations with matching `department_id` and `location_id`.
   ========================== */
SELECT * 
FROM employees 
INNER JOIN departments USING (department_id) 
INNER JOIN locations USING (location_id);

-- **Explanation**:
-- 1. The `INNER JOIN` combines rows from both tables where there's a match on the specified column(s).
-- 2. The `USING` clause specifies the common column to join on (e.g., `department_id`).

-- Example Result: Employees who are assigned to specific departments and locations.

  
/* ==========================
   3. EQUi JOIN (Using `=`)
   --------------------------
   Joins tables using the `=` operator to match rows.
   Example: Join employees with their department and location, where the department name is `Executive`.
   ========================== */
SELECT first_name, e.department_id, d.manager_id, department_name, l.location_id, city 
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
WHERE department_name = 'Executive';

-- **Explanation**:
-- 1. The `EQUI JOIN` uses the `=` operator to match the columns.
-- 2. Employees are joined with their respective departments and locations where the department name is 'Executive'.

-- Example Result: Employees in the 'Executive' department with their department and location details.

  
/* ==========================
   4. NON-EQUI JOIN
   --------------------------
   Joins using a non-equality condition (e.g., `BETWEEN`).
   Example: Match employees' salaries with the salary ranges from the `jobs` table.
   ========================== */
SELECT first_name, e.job_id, salary, j.job_id, min_salary, max_salary 
FROM employees e
JOIN jobs j ON j.job_id = 'SA_MAN' AND e.salary BETWEEN j.min_salary AND j.max_salary;

-- **Explanation**:
-- 1. The `NON-EQUI JOIN` uses a non-equality condition, such as `BETWEEN`, to match rows.
-- 2. Here, employees with a salary between the `min_salary` and `max_salary` of the 'SA_MAN' job are selected.

-- Example Result: Employees whose salary fits within the 'SA_MAN' salary range.

  
/* ==========================
   5. SELF JOIN
   --------------------------
   Joining a table with itself. Used when you want to relate rows within the same table.
   Example: Find employees with the same first name, but different employee IDs.
   ========================== */
SELECT e1.employee_id, e1.first_name 
FROM employees e1 
JOIN employees e2 ON e1.first_name = e2.first_name AND e1.employee_id != e2.employee_id;

-- **Explanation**:
-- 1. The `SELF JOIN` uses the same table (here `employees`), but aliases it as `e1` and `e2`.
-- 2. The condition ensures that different employee IDs with the same first name are selected.

-- Example Result: Employees with the same first name but different employee IDs.


-- Check which employee works under which manager by using self join:
SELECT e.first_name, e.employee_id, e.manager_id, m.first_name AS manager_name 
FROM employees e 
JOIN employees m ON e.manager_id = m.employee_id;

-- **Explanation**:
-- 1. The `SELF JOIN` finds out which employee reports to which manager using the manager's `employee_id`.
-- 2. It shows the employee's name, their ID, and their manager's name.

-- Example Result: A list of employees with their managers.


/* ==========================
   6. OUTER JOINS
   --------------------------
   Outer joins include rows even if there's no match. 
   Types:
   - Left Outer Join: All records from the left table, matched with right.
   - Right Outer Join: All records from the right table, matched with left.
   - Full Outer Join: All records from both tables.
   
   ========================== */

/* Left Outer Join: Retrieve all employees, even if they don't have a matching department. */
SELECT first_name, department_id, e.manager_id, department_name 
FROM employees e 
LEFT OUTER JOIN departments d USING (department_id);

-- **Explanation**:
-- 1. The `LEFT OUTER JOIN` ensures that all employees are returned, even those without a matching department.
-- 2. If no department is assigned, `department_name` will be `NULL`.

-- Example Result: Employees with or without departments.

/* Right Outer Join: Retrieve all departments, even if they don't have employees. */
SELECT first_name, department_id, d.manager_id, department_name 
FROM employees e 
RIGHT OUTER JOIN departments d USING (department_id);

-- **Explanation**:
-- 1. The `RIGHT OUTER JOIN` ensures that all departments are returned, even those without any employees.

-- Example Result: Departments with or without employees.

  
/* Full Outer Join: Retrieve all employees and departments, even if they don't have matching records. */
SELECT first_name, department_id, d.manager_id, department_name 
FROM employees e 
FULL OUTER JOIN departments d USING (department_id);

-- **Explanation**:
-- 1. The `FULL OUTER JOIN` ensures that all employees and all departments are included in the result, even if there is no matching record.

-- Example Result: A complete list of employees and departments, including employees without departments and departments without employees.
