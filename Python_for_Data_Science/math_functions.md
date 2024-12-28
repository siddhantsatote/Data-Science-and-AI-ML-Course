### `math_module_example.py`

```python
# ================================================
# Math Module Example in Python
# ================================================
import math

# ================================================
# Basic Mathematical Functions
# ================================================

# Example 1: Square and Square Root
a = 16
print(f"Square of {a} is {math.pow(a, 2)}")  # pow(x, y) returns x raised to the power of y
print(f"SquareRoot of {a} is {math.sqrt(a)}")  # sqrt(x) returns the square root of x
print(f"Natural Log of {a} is {math.log(a)}")  # log(x) returns the natural logarithm (base e) of x
print(f"Log of {a} to the base 10 is {math.log10(a)}")  # log10(x) returns the base 10 logarithm of x
print(f"E to the power {a} is {math.exp(a)}")  # exp(x) returns e raised to the power x

# ================================================
# Trigonometric Functions
# ================================================

# Example 2: Trigonometric Functions
# Convert angle to radians before using trigonometric functions
angle = math.radians(30)  # radians(x) converts degrees to radians
print(f"sin(30) = {math.sin(angle)}")  # sin(x) returns the sine of x (in radians)
print(f"cos(30) = {math.cos(angle)}")  # cos(x) returns the cosine of x (in radians)
print(f"tan(30) = {math.tan(angle)}")  # tan(x) returns the tangent of x (in radians)

# ================================================
# Advanced Mathematical Functions
# ================================================

# Example 3: Factorial, LCM, GCD, and Hypotenuse
num = 7
print(f"Factorial of {num} is {math.factorial(num)}")  # factorial(x) returns the factorial of x (x!)
print(f"LCM of 23, 47 is {math.lcm(23, 47)}")  # lcm(x, y) returns the least common multiple of x and y
print(f"GCD of 23, 47 is {math.gcd(23, 47)}")  # gcd(x, y) returns the greatest common divisor of x and y
print(f"a = 3, b = 4, Hypotenuse is {math.hypot(3, 4)}")  # hypot(x, y) returns the hypotenuse of a right triangle with sides x and y

# ================================================
# Built-in Mathematical Functions
# ================================================

# Example 4: Absolute Value, Round, Min, Max, Sum
x = -45
print("Absolute", abs(x))  # abs(x) returns the absolute value of x

y = 34.95734
print("Round", round(y, 2))  # round(x, n) rounds x to n decimal places

ls = [2, 8, 1, 7, 9, 5]
print("Minimum", min(ls))  # min(ls) returns the smallest value in the list
print("Maximum", max(ls))  # max(ls) returns the largest value in the list
print("Sum of elements", sum(ls))  # sum(ls) returns the sum of all elements in the list

# Printing constants
print("Pi =", math.pi)  # pi constant in the math module
print("e =", math.e)  # e constant in the math module
```

### **Explanation:**

1. **Basic Mathematical Functions:**
    - `math.pow(a, 2)` computes `a` raised to the power of `2` (square of `a`).
    - `math.sqrt(a)` calculates the square root of `a`.
    - `math.log(a)` computes the natural logarithm (base `e`) of `a`.
    - `math.log10(a)` gives the base-10 logarithm of `a`.
    - `math.exp(a)` computes `e` raised to the power of `a`.

2. **Trigonometric Functions:**
    - `math.radians(angle)` converts an angle from degrees to radians, which is needed by most trigonometric functions.
    - `math.sin(angle)` computes the sine of an angle (given in radians).
    - `math.cos(angle)` computes the cosine of an angle (given in radians).
    - `math.tan(angle)` computes the tangent of an angle (given in radians).

3. **Advanced Mathematical Functions:**
    - `math.factorial(num)` calculates the factorial of a number `num`. For example, `7! = 7 × 6 × 5 × 4 × 3 × 2 × 1`.
    - `math.lcm(x, y)` computes the least common multiple (LCM) of two numbers `x` and `y`.
    - `math.gcd(x, y)` computes the greatest common divisor (GCD) of two numbers `x` and `y`.
    - `math.hypot(x, y)` calculates the length of the hypotenuse of a right-angled triangle given sides `x` and `y`.

4. **Built-in Mathematical Functions:**
    - `abs(x)` returns the absolute value of `x`.
    - `round(x, n)` rounds `x` to `n` decimal places.
    - `min(ls)` returns the smallest value in the list `ls`.
    - `max(ls)` returns the largest value in the list `ls`.
    - `sum(ls)` returns the sum of all elements in the list `ls`.

5. **Constants:**
    - `math.pi` provides the mathematical constant `π` (approximately 3.14159).
    - `math.e` provides the mathematical constant `e` (approximately 2.71828).
