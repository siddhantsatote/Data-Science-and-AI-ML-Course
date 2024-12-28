### `operators_example.py`

```python
# ================================================
# Operators in Python
# ================================================

# ------------------------------
# Arithmetic Operators
# ------------------------------

# Addition
a = 34
b = 21
print("Addition: ", a + b)  # Adds a and b

x = "Ram"
y = "Ramesh"
print("String Addition: ", x + y)  # Concatenates the two strings

# Tuple Addition
tup1 = (1, 4.5, "E")
tup2 = (6, "D", "G")
print("Tuple Addition: ", tup1 + tup2)  # Concatenates two tuples

# List Addition
ls1 = [12, 43]
ls2 = [54, "XYZ"]
print("List Addition: ", ls1 + ls2)  # Concatenates two lists

# Subtraction
x = 65
y = 22
print("Subtraction: ", x - y)  # Subtracts y from x

# Set Subtraction
s1 = {1, 2, 3, 4}
s2 = {8, 6, 4, 2}
print("Set Subtraction s1 - s2: ", s1 - s2)  # Elements in s1 but not in s2
print("Set Subtraction s2 - s1: ", s2 - s1)  # Elements in s2 but not in s1

# Multiplication
p = 23
q = 3
print("Multiplication: ", p * q)  # Multiplies p and q

name = "Ram"
print("String Multiplication: ", name * 3)  # Repeats the string 3 times

t = (3, 5, 2)
print("Tuple Multiplication: ", t * 3)  # Repeats the tuple 3 times

l = [65, "F", 5]
print("List Multiplication: ", l * 4)  # Repeats the list 4 times

# Division
d = 12
e = 8
print("Division: ", d / e)  # Performs division (floating-point)

# Integer Division
print("Integer Division: ", d // e)  # Performs integer division (floor division)

# Modulus
print("Modulus: ", d % e)  # Returns the remainder after division

# Power
a = 3
print("Power (a^4): ", a ** 4)  # Raises a to the power of 4

b = 4
print("Power (4^3): ", 4 ** 3)  # Raises 4 to the power of 3

# ------------------------------
# Assignment Operators
# ------------------------------

# Assign
a = 10
print("Value of a:", a)

# Arithmetic Assignment Operators
b = 4
a += b  # a = a + b
print("a after += b:", a)

a -= b  # a = a - b
print("a after -= b:", a)

a *= b  # a = a * b
print("a after *= b:", a)

a /= b  # a = a / b
print("a after /= b:", a)

a %= b  # a = a % b
print("a after %= b:", a)

a **= b  # a = a ** b
print("a after **= b:", a)

print("-" * 50)

# ------------------------------
# Comparison Operators
# ------------------------------

# Equal to Operator
a = 3
b = 5
c = 3

print("a =", a, ", b =", b, ", c =", c)
print("a is less than b ->", a < b)  # Check if a is less than b
print("a is greater than b ->", a > b)  # Check if a is greater than b
print("a is less than or equal to b ->", a <= b)  # Check if a is less than or equal to b
print("a is greater than or equal to b ->", a >= b)  # Check if a is greater than or equal to b
print("a is equal to c ->", a == c)  # Check if a is equal to c
print("a is equal to b ->", a == b)  # Check if a is equal to b

# ------------------------------
# Logical Operators
# ------------------------------

# AND Operator
age = 19
nationality = "USA"

# Checks if age >= 18 AND nationality == "IN"
vote1 = age >= 18 and nationality == "IN"
print("AND Operator: ", vote1)

# OR Operator
vote2 = age >= 18 or nationality == "IN"
print("OR Operator: ", vote2)

# NOT Operator
print("Not AND:", not vote1)
print("Not OR:", not vote2)

# ------------------------------
# Membership Operators
# ------------------------------

a = 5
b = 5
print("a == b:", a == b)  # Check if a is equal to b
print("a is b:", a is b)  # Check if a and b refer to the same object in memory

# List Comparison
ls1 = [1, 2, 3]
ls2 = [1, 2, 3]
print("ls1 == ls2:", ls1 == ls2)  # Checks if lists have the same value
print("ls1 is ls2:", ls1 is ls2)  # Checks if ls1 and ls2 refer to the same object

ls3 = ls1  # Sharing the same memory location
print("ls1 == ls3:", ls1 == ls3)
print("ls1 is ls3:", ls1 is ls3)

# Modifying ls1 will also affect ls3
ls1[0] = 10
print("Modified ls1:", ls1)
print("ls3 is affected:", ls3)

# Creating a copy of ls2
ls4 = ls2.copy()
print("ls2 == ls4:", ls2 == ls4)
print("ls2 is ls4:", ls2 is ls4)  # ls2 and ls4 are two different objects

# Modifying ls2 will not affect ls4
ls2[0] = 100
print("Modified ls2:", ls2)
print("ls4 remains unchanged:", ls4)
```

### **Explanation of Code:**

#### 1. **Arithmetic Operators:**
   - **Addition (`+`)**: Adds two numbers, concatenates strings, or merges tuples and lists.
   - **Subtraction (`-`)**: Subtracts one number from another or subtracts elements in sets.
   - **Multiplication (`*`)**: Multiplies numbers, repeats strings, tuples, and lists.
   - **Division (`/`)**: Performs floating-point division.
   - **Integer Division (`//`)**: Divides numbers and returns the quotient without the remainder.
   - **Modulus (`%`)**: Returns the remainder when dividing two numbers.
   - **Power (`**`)**: Raises a number to the power of another number.

#### 2. **Assignment Operators:**
   - **Basic Assignment (`=`)**: Assigns values to variables.
   - **Arithmetic Assignment (`+=`, `-=`, `*=`, `/=`, `%=`, `**=`)**: These operators modify a variable using a shorthand form of the arithmetic operation.

#### 3. **Comparison Operators:**
   - These operators compare two values and return `True` or `False`.
   - **Equality (`==`)**: Checks if two values are equal.
   - **Inequality (`!=`)**: Checks if two values are not equal.
   - **Greater than (`>`)** and **Less than (`<`)**: Compare if one value is greater or less than another.
   - **Greater than or equal (`>=`)** and **Less than or equal (`<=`)**: Checks if one value is greater than or equal to, or less than or equal to another.

#### 4. **Logical Operators:**
   - **AND (`and`)**: Returns `True` if both conditions are true.
   - **OR (`or`)**: Returns `True` if at least one condition is true.
   - **NOT (`not`)**: Reverses the logical state.

#### 5. **Membership Operators:**
   - **`in`**: Checks if a value is present in a sequence (e.g., list, tuple, string).
   - **`not in`**: Checks if a value is not present in a sequence.
   - **`is`**: Checks if two variables point to the same object in memory.
   - **`is not`**: Checks if two variables do not point to the same object.

---

### **Additional Notes:**
- The `==` operator compares the values, while the `is` operator checks for object identity (i.e., whether two variables refer to the same object in memory).
- Logical operators like `and`, `or`, and `not` allow you to combine conditional statements for more complex logic.
