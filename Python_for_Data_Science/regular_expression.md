### **regular_expression_example.py**

```python
# ================================================
# Regular Expressions in Python
# ================================================
# Python's 're' module allows for working with regular expressions.
# Regular expressions allow you to search, match, or replace patterns in strings.

import re

# The 'match()' function checks if the pattern matches at the 'start' of the string
# If a match is found, it returns a match object; otherwise, it returns None.

text = "My Name is XYZ, I am from Pune"
output = re.match("My", text)  # Checking if 'My' is at the start of the string
print(output.group())  # This will print 'My' because it's found at the start of the string

output2 = re.match("XYZ", text)  # Checking if 'XYZ' is at the start of the string
# If 'XYZ' was at the start, this would print, but it's not, so it returns None
# print(output2.group())  # Uncommenting this will cause an error, since there's no match

# The 'search()' function checks the entire string and finds the first match.
# It doesn't have to be at the start of the string.

output = re.search("My", text)  # Searching for 'My' anywhere in the string
print(output.group())  # This will print 'My'

output2 = re.search("XYZ", text)  # Searching for 'XYZ' anywhere in the string
print(output2.group())  # This will print 'XYZ'

# The 'findall()' function returns a list of all matches in the string.
# It will return every instance of the pattern found.

output = re.findall("e", text)  # Finding all occurrences of the letter 'e'
print(output)  # This will print a list of 'e's found in the string

output2 = re.findall("m", text)  # Finding all occurrences of the letter 'm'
print(output2)  # This will print a list of 'm's found in the string

# Now, let's extract specific data using regular expressions from multi-line strings.

bhagat_singh = """Born 27 September 1907
Banga, Punjab, British India (present-day Punjab, Pakistan)
Died 23 March 1931 (aged 23)
Lahore Central Jail, Punjab, British India (present-day Punjab, Pakistan)
Cause of death Execution by hanging
Monuments Hussainiwala National Martyrs Memorial
Other names Shaheed-e-Azam
Organization Naujawan Bharat Sabha
Hindustan Socialist Republican Association"""

# Using regular expressions to extract specific data
data = re.findall("Born\t([0-9A-z ]*)\n([A-z, ]*).*\nDied\t([0-9A-z ]*).* (\d{2})", bhagat_singh)
print(data)  # This will extract birthdate, birthplace, death date, and age

aazad = """Born 23 July 1906
Bhabhra, Alirajpur State, British India[1]
Died 27 February 1931 (aged 24)
Allahabad, United Provinces, British India
Cause of death Suicide by gunshot
Other names Azad
Balraj
Thakur Saheb"""

# Extracting similar information from another bio
data2 = re.findall("Born\t([0-9A-z ]*)\n([A-z, ]*).*\nDied\t([0-9A-z ]*).* (\d{2})", aazad)
print(data2)  # This will extract birthdate, birthplace, death date, and age

biodata = """Sachin Ramesh Tendulkar
Address : Mumbai, Maharashtra, 123423
Mo. 9876543210
email sachin.t@cricket.com"""

# Extracting biodata details such as name, address, phone number, and email using regex
details = re.findall("([A-z ]*)\nAddress : ([A-z ,0-9]*)\nMo. (\d{10})\nemail ([a-z.@]*)", biodata)
print(details)  # This will extract name, address, phone number, and email

```

### **Explanation of Code:**

#### 1. **Regex Basics:**
   - **`match()`**: The `re.match()` function checks if the pattern matches at the **start** of the string. If it does, it returns a match object; otherwise, it returns `None`.
   - **`search()`**: The `re.search()` function checks the **entire string** for the pattern. If the pattern is found anywhere, it returns the match object.
   - **`findall()`**: The `re.findall()` function returns a **list of all occurrences** of the pattern in the string.

#### 2. **Working with Regular Expressions:**
   - Regular expressions are patterns used to match strings. For example, `"Born\t([0-9A-z ]*)\n([A-z, ]*).*\nDied\t([0-9A-z ]*).* (\d{2})"` is a regex pattern used to extract information like the birth date, birthplace, death date, and age.
   - The `\t` in the pattern matches a tab, and `\n` matches a newline character.
   - `[0-9A-z ]*` matches any alphanumeric character or space, `([0-9A-z ]*)` captures that portion for further use.

#### 3. **Examples of Regex Patterns:**
   - **"Born\t([0-9A-z ]*)\n([A-z, ]*).*\nDied\t([0-9A-z ]*).* (\d{2})"**: This pattern matches:
     - Birth date (date with month and year)
     - Birthplace (alphanumeric characters and commas)
     - Death date
     - Age (a two-digit number)
   - **"([A-z ]*)\nAddress : ([A-z ,0-9]*)\nMo. (\d{10})\nemail ([a-z.@]*)"**: This pattern is used to extract:
     - Name (words and spaces)
     - Address (alphanumeric characters and commas)
     - Phone number (a 10-digit number)
     - Email address (lowercase letters, periods, and at symbols)

#### 4. **Output:**
   - `findall()` returns a **list** of matches. If multiple matches are found, all will be included in the list.
   - The use of `group()` with a match object prints the text matched by the regex pattern.

---

### **Additional Notes:**
- **Regular Expressions (Regex)** are very powerful tools for text processing, especially when you need to find or manipulate strings based on patterns.
- In Python, the **`re` module** is used for working with regular expressions, providing various functions like `match()`, `search()`, `findall()`, and more.
