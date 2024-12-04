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
