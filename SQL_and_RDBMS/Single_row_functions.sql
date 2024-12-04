/* ============================================================
   STRING FUNCTIONS DEMONSTRATION
   ============================================================ */

-- 1. Change case of text
SELECT 
    first_name, 
    UPPER(first_name) AS upper_name,            -- Convert to uppercase
    email, 
    LOWER(email) AS lower_email,               -- Convert to lowercase
    job_id, 
    INITCAP(job_id) AS title_case_job          -- Convert to Title Case
FROM employees;

-- 2. Use LOWER() in a WHERE clause to ensure case-insensitive search
SELECT 
    first_name, 
    salary, 
    job_id 
FROM employees 
WHERE LOWER(job_id) = 'sa_man';               -- Compare in lowercase

-- 3. Measure string length using LENGTH()
SELECT 
    first_name, 
    LENGTH(first_name) AS name_length          -- Get number of characters
FROM employees;

-- 4. Concatenate strings using CONCAT()
SELECT 
    CONCAT(CONCAT(first_name, ' '), last_name) AS full_name  -- Combine first and last names
FROM employees;

-- 5. Padding strings with LPAD() and RPAD()
-- Example: Add stars to make the string length 6
SELECT LPAD('sql', 6, '*') AS left_padded FROM dual;  -- Left padding
SELECT RPAD('sql', 6, '*') AS right_padded FROM dual; -- Right padding

-- Combine LPAD() and RPAD() for balanced padding
SELECT RPAD(LPAD('sql', 6, '*'), 9, '*') AS padded FROM dual;

-- Add '*' to both sides of `first_name`
SELECT 
    RPAD(LPAD(first_name, LENGTH(first_name) + 5, '*'), LENGTH(first_name) + 10, '*') AS padded_name
FROM employees;

-- 6. Find the position of a character using INSTR()
-- Find the position of the 3rd occurrence of 'l'
SELECT INSTR('sql tutorialllll', 'l', 1, 3) AS position FROM dual;

-- 7. Extract a substring using SUBSTR()
SELECT 
    SUBSTR('sql tutorial', 3, 8) AS extracted_substring  -- Start at position 3, extract 8 characters
FROM dual;

-- 8. Trim unwanted characters using LTRIM() and RTRIM()
SELECT 
    LTRIM('     #$@..LLLsql      ', ' #$@.L') AS trimmed_string -- Remove specified characters from left
FROM dual;

SELECT 
    RTRIM(LTRIM('      QWWWREEsql#$@..LLL    ', ' QWRE'), '#$@ .L') AS trimmed_string 
FROM dual;

-- Extract 'mywebsitename' from 'www.mywebsitename.com'
SELECT 
    LTRIM(RTRIM('www.mywebsitename.com', '.com'), 'www.') AS address 
FROM dual;

-- 9. Replace characters using REPLACE()
SELECT 
    REPLACE('sql', 'sql', 'java') AS replaced_string -- Replace 'sql' with 'java'
FROM dual;

-- Replace 'a' with '*' in `first_name`
SELECT 
    REPLACE(first_name, 'a', '*') AS modified_name
FROM employees;

-- 10. Reverse a string using REVERSE()
SELECT 
    REVERSE('sql') AS reversed_string, 
    first_name, 
    REVERSE(first_name) AS reversed_name 
FROM employees;

/* ============================================================
   NUMBER FUNCTIONS DEMONSTRATION
   ============================================================ */

-- 1. Square root using SQRT()
SELECT SQRT(123) AS square_root FROM dual;
SELECT SQRT(25) AS square_root FROM dual;

-- 2. Find the remainder using MOD()
SELECT MOD(25, 5) AS remainder FROM dual;

-- 3. Power calculation using POWER()
SELECT POWER(5, 2) AS result FROM dual;  -- 5^2
SELECT POWER(6, 4) AS result FROM dual;  -- 6^4

-- 4. Round to the nearest value using ROUND()
SELECT ROUND(12.3454, 2) AS rounded_value FROM dual;

-- 5. Truncate without rounding using TRUNC()
SELECT TRUNC(12.3454, 2) AS truncated_value FROM dual;

-- Combine SQRT() and ROUND() in nested functions
SELECT ROUND(SQRT(123), 3) AS precise_square_root FROM dual;

/* ============================================================
   DATE FUNCTIONS DEMONSTRATION
   ============================================================ */

-- 1. Current date and time
SELECT SYSDATE AS current_date, SYSTIMESTAMP AS current_timestamp FROM dual;
SELECT CURRENT_DATE, CURRENT_TIMESTAMP FROM dual;

-- 2. Add months to a date using ADD_MONTHS()
SELECT ADD_MONTHS(DATE '2024-11-19', 3) AS future_date FROM dual;
SELECT hire_date, ADD_MONTHS(hire_date, 3) AS updated_hire_date FROM employees;

-- 3. Find months between two dates using MONTHS_BETWEEN()
SELECT MONTHS_BETWEEN(DATE '2024-11-19', DATE '2003-11-19') AS months_difference FROM dual;
SELECT MONTHS_BETWEEN(SYSDATE, hire_date) AS months_since_hire FROM employees;

-- 4. Extract year, month, or day using EXTRACT()
SELECT 
    SYSDATE, 
    EXTRACT(YEAR FROM SYSDATE) AS year, 
    EXTRACT(MONTH FROM SYSDATE) AS month, 
    EXTRACT(DAY FROM SYSDATE) AS day 
FROM dual;

-- Extract components of `hire_date`
SELECT 
    hire_date, 
    EXTRACT(YEAR FROM hire_date) AS hire_year,
    EXTRACT(MONTH FROM hire_date) AS hire_month,
    EXTRACT(DAY FROM hire_date) AS hire_day
FROM employees;

-- 5. Find the next occurrence of a day using NEXT_DAY()
SELECT NEXT_DAY(DATE '2024-11-19', 'Monday') AS next_monday FROM dual;

-- 6. Find the last day of a month using LAST_DAY()
SELECT LAST_DAY(DATE '2024-11-19') AS last_day_of_month FROM dual;
SELECT hire_date, LAST_DAY(hire_date) AS last_day_of_month FROM employees;
