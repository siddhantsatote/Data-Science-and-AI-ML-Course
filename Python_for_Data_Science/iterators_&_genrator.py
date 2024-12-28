# ================================================
# Iterators in Python
# ================================================

# List of numbers
ls = [9, 5, 2, 4, 6, 3]
print("List:", ls)

# Creating an iterator for the list using iter() function
it = iter(ls)

# Using next() to get elements from the iterator one by one
print(next(it))  # Output: 9
print(next(it))  # Output: 5
print(next(it))  # Output: 2
print(next(it))  # Output: 4
print(next(it))  # Output: 6
print(next(it))  # Output: 3

# Explanation:
# An iterator is an object which allows us to traverse through all the elements in a collection (like a list).
# `iter()` creates an iterator object from an iterable (like a list), and `next()` retrieves the next item from the iterator.

# List of names
ls2 = ["Ram", "Sham", "Sita", "Gita", "Ramesh", "Suresh"]

# Creating an iterator for the list of names
it2 = iter(ls2)
print(next(it2))  # Output: Ram
print(next(it2))  # Output: Sham

# Explanation:
# Similarly, for another list (ls2), we create an iterator (it2) and use `next()` to fetch the names one by one.

# Reading a file with iterators
file = open(r"C:\Users\Soft\Desktop\Py\Docs\Car details Dataset.csv", "r")
excel_iter = iter(file.readlines())  # Creating an iterator for reading lines from the file
print(next(excel_iter))  # Output: First line in the file
print(next(excel_iter))  # Output: Second line in the file
print(next(excel_iter))  # Output: Third line in the file
print(next(excel_iter))  # Output: Fourth line in the file

# Explanation:
# We can also use iterators to read files. Here we open a CSV file, and `file.readlines()` gives a list of lines.
# Using `iter()` creates an iterator for the lines, and `next()` fetches the lines one by one.

file2 = open("marks.csv", "r")
marks = iter(file2.readlines())  # Creating an iterator for reading lines from the file
print(next(marks))  # Output: First line in the file
print(next(marks))  # Output: Second line in the file
print(next(marks))  # Output: Third line in the file
print(next(marks))  # Output: Fourth line in the file
print(next(marks))  # Output: Fifth line in the file

print("*" * 50)

# Explanation:
# Another example of reading from a different file. The `next()` function will raise a StopIteration exception if there are no more lines in the file.

# ================================================
# Generators in Python
# ================================================

# A function that yields odd numbers from a given iterable
def my_iterator(iterable):
    for i in iterable:
        if i % 2 != 0:  # Check if the number is odd
            yield i  # `yield` creates a generator, which produces values one at a time

# List of numbers
ls = [4, 9, 3, 5, 6, 11, 7, 12]

# Creating a generator object
odd_num = my_iterator(ls)

# Using next() to get values from the generator
print(next(odd_num))  # Output: 9
print(next(odd_num))  # Output: 3
print(next(odd_num))  # Output: 5
print(next(odd_num))  # Output: 11

# Explanation:
# Generators allow for lazy evaluation; they produce values on the fly. The `yield` keyword in the function turns it into a generator.
# In the above example, only odd numbers from the list are yielded.

# Function to greet names that start with "R"
def custom_greet(iterable):
    for i in iterable:
        if i.lower().startswith("r"):  # Check if the name starts with "r" (case-insensitive)
            yield f"Hello {i}"  # `yield` the greeting message

# List of names
names = ["Ram", "Sham", "Sita", "Gita", "Hema", "Rekha", "Jaya", "Sushma", "Ramesh", "Suresh"]

# Creating a generator object
greet = custom_greet(names)

# Using next() to get greetings for names starting with "R"
print(next(greet))  # Output: Hello Ram
print(next(greet))  # Output: Hello Rekha
print(next(greet))  # Output: Hello Ramesh

# Explanation:
# The `custom_greet` generator yields greetings for names that start with the letter "R". We use `next()` to get the next greeting in sequence.

# Uncommenting the line below will raise a StopIteration exception
# print(next(greet))  # This would raise an exception since there are no more names starting with "R"
