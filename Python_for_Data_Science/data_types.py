# ============================================
# Python Data Types Example
# ============================================

# 1. Numeric Types: Integer, Float, Complex
# -----------------------------------------------------------
# Integer - Whole numbers (positive or negative) without decimals.
a = 10
print("Integer a:", a, type(a))  # prints the value and its type

# Example of integer variable
age = 33
print("Integer age:", age, type(age))

# -----------------------------------------------------------
# Float - Numbers with decimal points.
pi = 3.14
print("Float pi:", pi, type(pi))  # prints float value and its type

# -----------------------------------------------------------
# Complex - Complex numbers are represented as `real + imag` (e.g. 4 + 9j)
c = 4j
print("Complex c:", c, type(c))

d = 4 - 9j
print("Complex d:", d, type(d))

# -----------------------------------------------------------
# 2. Sequential Data Types: String, Tuple, List
# -----------------------------------------------------------
# String - A sequence of characters enclosed in quotes.
blood_group = "A+"
print("String blood_group:", blood_group, type(blood_group))  # string type

# Example of a string with name
name = "Sachin"
print("String name:", name, type(name))

# Single-line string
text = "This is Python single line string"
print("Single-line string:", text)

# Multi-line string
text2 = """This is 
Python Multiline
text example"""
print("Multiline string:", text2)

# -----------------------------------------------------------
# Tuple - An ordered collection of items (immutable).
tup = (1, 34, 6, 2, 84)
print("Tuple tup:", tup, type(tup))

# Another example of tuple
tup2 = 3, 85, 13, -3
print("Tuple tup2:", tup2, type(tup2))

# A tuple with a single element
x = (56)  # This will be an integer, not a tuple.
print("Single element tuple (incorrect):", x, type(x))

# Correct way to define a tuple with one element
y = (56,)
print("Single element tuple (correct):", y, type(y))

# Nested tuple
tup3 = (4, 8, (5, 2), [34, 5])  # tuple with another tuple and list inside
print("Nested Tuple tup3:", tup3, type(tup3))

# -----------------------------------------------------------
# List - An ordered, mutable collection of items.
ls = [3, 5, 1, 9, 4]
print("List ls:", ls, type(ls))

# List with mixed data types
ls2 = [3, 4, [59, 23], "ABC", "xyz", (4, 5)]
print("List ls2 with mixed types:", ls2)

# -----------------------------------------------------------
# Set - A collection of unique, unordered items.
s = {4, 5, 1, 6, 2, 4, 5, 6, 2, 3, 8, 4}
print("Set s (unique values):", s, type(s))  # duplicates are removed

# Empty set
empty_set = set()
print("Empty set:", empty_set)

# -----------------------------------------------------------
# Frozenset - Immutable version of a set.
fs = frozenset((3, 2, 1, 6, 3, 5))  # elements can't be changed after creation
print("Frozenset fs:", fs, type(fs))

# -----------------------------------------------------------
# Dictionary - A collection of key-value pairs.
d = {"Name": "Sachin", "Jersey": 10}
print("Dictionary d:", d, type(d))

# Creating a dictionary from a list of tuples
list_of_tuple = [(1, "A"), ("Two", 2)]
d2 = dict(list_of_tuple)
print("Dictionary from list of tuples d2:", d2, type(d2))

# Creating a dictionary from two lists using zip
l1 = ["Sachin", "Rohit", "Hardik"]  # Keys
l2 = ["MI", "MI", "GL"]             # Values
d3 = dict(zip(l1, l2))
print("Dictionary from two lists d3:", d3, type(d3))

# -----------------------------------------------------------
# Boolean - True or False values.
t = True
print("Boolean t:", t, type(t))

f = False
print("Boolean f:", f, type(f))

# ============================================
# Notes:
# 1. Python is a dynamically typed language, which means you don't need to declare the type of variable explicitly.
# 2. Integer (int) and Float (float) represent numerical values, while Complex (complex) represents complex numbers.
# 3. Strings are ordered collections of characters enclosed by single, double, or triple quotes.
# 4. Tuples are immutable ordered collections, Lists are mutable ordered collections.
# 5. Sets are unordered collections of unique items, and Frozensets are immutable sets.
# 6. Dictionaries are unordered collections of key-value pairs.
# 7. Boolean represents two values: True and False.

