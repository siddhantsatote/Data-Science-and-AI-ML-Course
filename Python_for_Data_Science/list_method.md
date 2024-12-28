### `list_methods.py`

```python
# ================================================
# List Methods in Python
# ================================================

# Initial List
ls = [4, 2, 8]
print("Original List:", ls)

# ================================================
# Append Method: Adds a single element at the end of the list
# ================================================
ls.append("ABC")
print("Append =>", ls)

# Append a tuple
ls.append((90, "XYZ"))
print("Append =>", ls)

# ================================================
# Extend Method: Adds multiple elements at the end of the list
# ================================================
ls.extend(("3RI", "Tech"))
print("Extend =>", ls)

# Extending the list with individual characters of a string
ls.extend("Pune")
print("Extend =>", ls)

# ================================================
# Insert Method: Adds an element at a specific index
# ================================================
ls.insert(4, "Python")
print("Insert =>", ls)

ls.insert(8, "pvt ltd")
print("Insert =>", ls)

# ================================================
# Remove Method: Removes the first occurrence of the specified element
# ================================================
ls.remove((90, 'XYZ'))
print("Remove =>", ls)

ls.remove("ABC")
print("Remove =>", ls)

# ================================================
# Pop Method: Removes the element at the specified index (or removes the last element if index is not specified)
# ================================================
ls.pop()
print("Pop =>", ls)

ls.pop(3)
print("Pop =>", ls)

ls.pop(5)
print("Pop =>", ls)

# ================================================
# Update Method: Modifies an element at a specified index
# ================================================
ls[5] = "ABC"
print("Update =>", ls)

ls[-2] = 100
print("Update =>", ls)

# ================================================
# Copy Method: Creates a copy of the list
# ================================================
ls2 = ls.copy()
print("Copy =>", ls2)

# ================================================
# Clear Method: Removes all elements from the list
# ================================================
ls2.clear()
print("Clear =>", ls2)

ls.clear()
print("Clear =>", ls)

# ================================================
# Reverse Method: Reverses the order of the list
# ================================================
ls.extend([9, 4, 2, 8, 5, 1, 0])
print("Original =>", ls)

ls.reverse()
print("Reversed =>", ls)

# ================================================
# Sort Method: Sorts the list in ascending or descending order
# ================================================
ls.sort()
print("Sort (ASC) =>", ls)

ls.sort(reverse=True)
print("Sort (DESC) =>", ls)

# ================================================
# Count Method: Returns the number of occurrences of an element in the list
# Index Method: Returns the index of the first occurrence of an element
# ================================================
ls2 = list("23748274892742268")
print("List from String:", ls2)

# Example of count and index methods:
# You can count occurrences of a value using count() method
# Example: ls2.count("2") -> returns number of times "2" appears in ls2

# You can find the index of a value using index() method
# Example: ls2.index("8") -> returns the first index of "8"
```

### Explanation:

#### **1. `append()` Method**:
- **Purpose**: Adds a single element at the end of the list.
- **Syntax**: `list.append(element)`
  - Adds `element` to the end of `list`.
  
#### **2. `extend()` Method**:
- **Purpose**: Adds multiple elements at the end of the list.
- **Syntax**: `list.extend(iterable)`
  - `iterable` can be any iterable (list, tuple, string, etc.), and each element is added to the list.
  
#### **3. `insert()` Method**:
- **Purpose**: Adds an element at a specific index.
- **Syntax**: `list.insert(index, element)`
  - Inserts `element` at `index` in the list.

#### **4. `remove()` Method**:
- **Purpose**: Removes the first occurrence of a specific element.
- **Syntax**: `list.remove(element)`
  - If the element is not found, it raises a `ValueError`.

#### **5. `pop()` Method**:
- **Purpose**: Removes the element at the given index (or removes the last element if no index is provided).
- **Syntax**: `list.pop([index])`
  - If no index is given, it removes and returns the last element.

#### **6. `update()`**:
- **Purpose**: Modifies an element at a specified index.
- **Syntax**: `list[index] = new_value`
  - Modifies the value of the element at `index` to `new_value`.

#### **7. `copy()` Method**:
- **Purpose**: Creates a shallow copy of the list.
- **Syntax**: `new_list = list.copy()`
  - Creates a new list with the same elements but stored separately from the original.

#### **8. `clear()` Method**:
- **Purpose**: Removes all elements from the list.
- **Syntax**: `list.clear()`
  - Clears the list, making it empty.

#### **9. `reverse()` Method**:
- **Purpose**: Reverses the order of the list.
- **Syntax**: `list.reverse()`
  - Reverses the list in-place.

#### **10. `sort()` Method**:
- **Purpose**: Sorts the list in ascending or descending order.
- **Syntax**: `list.sort(reverse=True/False)`
  - The `reverse=True` sorts the list in descending order.

#### **11. `count()` and `index()` Methods**:
- **Purpose**: `count()` counts the occurrences of an element in the list, and `index()` finds the index of the first occurrence of an element.
- **Syntax**:
  - `list.count(element)`
  - `list.index(element)`+
