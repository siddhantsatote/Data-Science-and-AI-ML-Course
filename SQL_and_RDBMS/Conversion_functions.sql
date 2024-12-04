/* ============================================================
   TO_CHAR() FUNCTION:
   Converts dates or numbers into formatted strings.
   ============================================================ */

-- 1. Extract year components in various formats
SELECT 
    hire_date, 
    TO_CHAR(hire_date, 'YYYY') AS full_year,        -- Full year (e.g., 2024)
    TO_CHAR(hire_date, 'YY') AS short_year,        -- Last two digits of the year (e.g., 24)
    TO_CHAR(hire_date, 'Year') AS spelled_year     -- Year with proper capitalization
FROM employees;

-- 2. Extract month components in different formats
SELECT 
    hire_date, 
    TO_CHAR(hire_date, 'MM') AS month_number,      -- Numeric month (e.g., 09 for September)
    TO_CHAR(hire_date, 'MMTH') AS month_with_suffix, -- Month with suffix (e.g., 09TH)
    TO_CHAR(hire_date, 'MMSPTH') AS spelled_month_with_suffix, -- Spelled month with suffix (e.g., Ninth)
    TO_CHAR(hire_date, 'Mon') AS short_month_name, -- Abbreviated month (e.g., Sep)
    TO_CHAR(hire_date, 'Month') AS full_month_name -- Full month name (e.g., September)
FROM employees;

-- 3. Extract day components in various formats
SELECT 
    hire_date, 
    TO_CHAR(hire_date, 'DD') AS day_number,       -- Day of the month (e.g., 04)
    TO_CHAR(hire_date, 'DDTH') AS day_with_suffix, -- Day with suffix (e.g., 04TH)
    TO_CHAR(hire_date, 'DDSPTH') AS spelled_day_with_suffix, -- Spelled day with suffix (e.g., Fourth)
    TO_CHAR(hire_date, 'Day') AS full_day_name,   -- Full day name (e.g., Monday)
    TO_CHAR(hire_date, 'DY') AS short_day_name    -- Abbreviated day name (e.g., Mon)
FROM employees;

-- 4. Combine all components into a custom format
-- Example: "Mon, 17th Jun 2003"
SELECT 
    hire_date, 
    TO_CHAR(hire_date, 'Dy, DDTH Mon YYYY') AS formatted_date
FROM employees;

-- 5. Filter employees hired in a specific year
-- Example: Employees hired in 2003
SELECT * 
FROM employees 
WHERE TO_CHAR(hire_date, 'YYYY') = '2003';

-- 6. Find employees hired on a specific day of the week
-- Example: Employees hired on Sunday
SELECT 
    hire_date, 
    TO_CHAR(hire_date, 'fmDay') AS formatted_day, -- "fm" removes extra spaces
    LENGTH(TO_CHAR(hire_date, 'fmDay')) AS day_length
FROM employees
WHERE TO_CHAR(hire_date, 'fmDay') = 'Sunday';

/* ============================================================
   TO_DATE() FUNCTION:
   Converts strings into date data types.
   ============================================================ */

-- 1. Filter employees hired between 2003 and 2005
SELECT * 
FROM employees 
WHERE hire_date BETWEEN TO_DATE('2003', 'YYYY') AND TO_DATE('2005', 'YYYY');

-- 2. Add months to a specific date
-- Example: Add 2 months to "04-Sep-2024"
SELECT 
    ADD_MONTHS(TO_DATE('SEP 04 24', 'MON DD YY'), 2) AS new_date
FROM dual;

/* ============================================================
   TO_NUMBER() FUNCTION:
   Converts formatted strings into numeric data types.
   ============================================================ */

-- 1. Add two numeric values, one extracted from a formatted string
-- Example: Add "Rs.232.343434" to "233.32453432"
SELECT 
    TO_NUMBER('Rs.232.343434', 'L999.000999') + 233.32453432 AS total
FROM dual;

-- 2. Filter employees with salaries greater than Rs.15,000
SELECT * 
FROM employees 
WHERE salary > TO_NUMBER('Rs.15,000', 'L99,999');
