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
