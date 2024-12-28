### **string_methods.py**

```python
# ================================================
# String Methods in Python
# ================================================
# Strings are immutable in Python, meaning once they are created, 
# they cannot be changed. You can perform operations on strings 
# that return modified versions of the string.

# Example string for demonstration
w = "PyTHon ProGrAmMing"
print(w)  # Original string

# ----------------------------------------------
# String Methods:
# Lower: Converts the entire string to lowercase
print("Lower -", w.lower())  # Converts all letters to lowercase

# Upper: Converts the entire string to uppercase
print("Upper -", w.upper())  # Converts all letters to uppercase

# Title: Capitalizes the first letter of each word in the string
print("Title -", w.title())  # Capitalizes first letter of each word

# Capitalize: Capitalizes the first letter of the string only
print("Capitalize -", w.capitalize())  # Capitalizes only the first letter

# Join: Joins elements of a list into a string with a specified separator
ls = ["3RI", "Technologies", "pvt", "ltd"]
print(" ".join(ls))  # Joins with a space separator
print("-".join(ls))  # Joins with a hyphen separator
print(".".join(ls))  # Joins with a period separator

# Example of join between string and list
print("ABC".join("Python"))  # Joins each letter with 'ABC'

# Split: Splits the string into a list of substrings based on a specified delimiter
ins = "3RI Technologies PVT LTD"
print(ins.split())  # Splits by default whitespace
print(ins.split("e"))  # Splits by the letter 'e'
print(ins.split("o"))  # Splits by the letter 'o'

# Strip: Removes specified characters from both ends of the string
print(ins.strip("3RI "))  # Removes '3RI ' from the beginning and end
print(ins.strip("Tech"))  # Removes 'Tech' from the beginning and end
print(ins.rstrip("LTD"))  # Removes 'LTD' from the right end
print(ins.rstrip("Dino"))  # Tries to remove 'Dino', but not found at the end
print(ins.strip("3RI Institute PVT LTD"))  # Removes '3RI Institute PVT LTD' from both ends

# Center, rjust, ljust: Adjusts the string's position within a specified width
w = "Python"
print(w.center(10, "*"))  # Centers the string within a width of 10, with '*' padding
print(w.center(13, "#"))  # Centers the string within a width of 13, with '#' padding
print(w.ljust(10, "*"))  # Left justifies the string within a width of 10, with '*' padding
print(w.rjust(10, "*"))  # Right justifies the string within a width of 10, with '*' padding
print(w.center(20, " "))  # Centers the string within a width of 20, with space padding

# Find: Finds the first occurrence of a substring within the string
print(ins)
print(ins.find("o"))  # Finds the index of the first 'o'
print(ins.find("e"))  # Finds the index of the first 'e'
print(ins.find("K"))  # Returns -1 because 'K' is not in the string
print(ins.find("e", 6))  # Finds 'e' starting from index 6
print(ins.find("T", 5))  # Finds 'T' starting from index 5
print(ins.find("T", 20))  # Returns -1 as 'T' is not found after index 20

w = "ABCDEEF"
print(w.find("E", 5))  # Finds 'E' starting from index 5

# Replace: Replaces occurrences of a substring with a new substring
print(ins)
print(ins.replace("Technologies", "Tech"))  # Replaces 'Technologies' with 'Tech'
print(ins.replace("nologies", ""))  # Removes 'nologies' from the string
w_changed = ins.replace(" ", "--")  # Replaces spaces with '--'
print(w_changed)
print(ins)

print("-" * 50)

# Check if a string is in lower or upper case
w1 = "Python"
w2 = "python"
w3 = "PYTHON"

print(w1.islower())  # Checks if all characters are lowercase
print(w2.islower())  # Checks if all characters are lowercase
print(w1.isupper())  # Checks if all characters are uppercase
print(w3.isupper())  # Checks if all characters are uppercase

# Various string checks: isalpha, isnumeric, isalnum
w4 = "ABC123!@#"
w5 = "ABC123"
w6 = "ABCdef"
w7 = "123"

print(w4.isalpha())  # Checks if the string contains only alphabet characters (False)
print(w5.isalpha())  # Checks if the string contains only alphabet characters (False)
print(w6.isalpha())  # Checks if the string contains only alphabet characters (True)
print(w4.isnumeric())  # Checks if the string contains only numeric characters (False)
print(w5.isnumeric())  # Checks if the string contains only numeric characters (False)
print(w7.isnumeric())  # Checks if the string contains only numeric characters (True)
print(w4.isalnum())  # Checks if the string contains only alphanumeric characters (False)
print(w5.isalnum())  # Checks if the string contains only alphanumeric characters (True)
print(w6.isalnum())  # Checks if the string contains only alphanumeric characters (True)
print(w7.isalnum())  # Checks if the string contains only alphanumeric characters (True)

# Counting specific characters in a string
text = "India, officially the Republic of India, is a country in South Asia. It is the seventh-largest country in the world by area and the most populous country."
print(text.count(" "))  # Counts the number of spaces in the string
print(text.count("India"))  # Counts how many times 'India' appears in the string
print(text.count("is"))  # Counts how many times 'is' appears in the string

# Looping through a list and counting alphanumeric and non-alphanumeric characters
ls = ["A", "3", "D", "G", "5", "%", "@"]
count = 0
for i in ls:
    if i.isalnum():  # Counts alphanumeric characters
        count += 1

print(count)  # Prints the number of alphanumeric characters

sym = 0
for i in ls:
    if not i.isalnum():  # Counts non-alphanumeric characters
        sym += 1

print(sym)  # Prints the number of non-alphanumeric characters

# Checking if a string starts or ends with a specific substring
website = "www.3ritechnologies.com"
print(website.startswith("www"))  # Checks if the string starts with 'www'
print(website.endswith(".com"))  # Checks if the string ends with '.com'

# Validate a website or email format
if website.startswith("www.") and website.endswith(".com"):
    print("The valid website")
else:
    print("Website not valid")

email = input("Enter email: ")  # Takes an email input from the user
if email.endswith(".com") and "@" in email and "www." not in email:
    print("The valid email")
else:
    print("Email not valid")
```

### **Explanation of Code:**

1. **String Methods:**
   - **`lower()`**: Converts all characters in the string to lowercase.
   - **`upper()`**: Converts all characters in the string to uppercase.
   - **`title()`**: Capitalizes the first letter of each word in the string.
   - **`capitalize()`**: Capitalizes the first letter of the string.
   - **`join()`**: Joins the elements of an iterable (like a list) into a string with a specified separator.
   - **`split()`**: Splits the string into a list of substrings based on a specified delimiter.
   - **`strip()`, `rstrip()`, and `lstrip()`**: Removes specified characters from both ends (right, left, or both).
   - **`center()`, `ljust()`, and `rjust()`**: Adjusts the string's position in a given width, with specified padding.
   - **`find()`**: Finds the first occurrence of a substring and returns its index, or -1 if not found.
   - **`replace()`**: Replaces occurrences of a substring with another string.
   - **`islower()`, `isupper()`**: Checks if the string is in lowercase or uppercase.
   - **`isalpha()`, `isnumeric()`, `isalnum()`**: Checks if the string contains only alphabets, numbers, or alphanumeric characters.
   - **`count()`**: Counts occurrences of a specified substring.
   - **`startswith()` and `endswith()`**: Checks if the string starts or ends with a specific substring.

2. **String Validation:**
   - We also demonstrate how to validate strings like email addresses or website URLs based on specific rules (like checking if an email ends with `.com` and contains `@`).

---

### **Additional Notes:**
- **Immutability of Strings**: Strings are immutable, which means methods like `lower()` or `upper()` don't modify the original string; instead, they return a new string.
- **Practical Uses**: These string methods are commonly used for string manipulation, validation, and cleaning data for tasks like form validation or text processing.
