# ============================================
# Python Dictionary Methods Example
# ============================================

# Creating a dictionary with keys and values
d = {"Name": "Ram", 1: 100, "Contact": 123}
print("Original Dictionary:", d)
print("Type of d:", type(d))

# ============================================
# Update Method
# ============================================
# The update() method adds key-value pairs to the dictionary
# If the key already exists, it updates the value for that key.
d.update({"City": "Pune", "Pi": 3.14, "Name": "Sham"})
print("After update:", d)

# ============================================
# Set Default Method
# ============================================
# The setdefault() method adds a key-value pair only if the key doesn't already exist.
# If the key exists, it doesn't modify the value.
d.setdefault("Name", "Shankar")
print("After setdefault for 'Name':", d)

d.setdefault("God", "Shankar")
print("After setdefault for 'God':", d)

# ============================================
# Pop Method
# ============================================
# The pop() method removes a key-value pair by the given key and returns the value.
print("Removed 'Name':", d.pop("Name"))
print("After pop operation:", d)

# ============================================
# Pop-Item Method
# ============================================
# The popitem() method removes and returns the last added key-value pair from the dictionary.
print("Removed Last Item:", d.popitem())
print("After popitem operation:", d)

# ============================================
# Get Method
# ============================================
# The get() method retrieves the value associated with the given key.
# If the key doesn't exist, it returns None (or a default value if provided).
print("Get 'City':", d.get("City"))
print("Get 'Contact':", d.get("Contact"))
print("Get Non-existing Key:", d.get(1234567))  # Returns None

# ============================================
# Keys, Values, and Items Methods
# ============================================
# The keys() method returns a view object that displays all the keys in the dictionary.
print("Keys in dictionary:", d.keys())

# The values() method returns a view object that displays all the values in the dictionary.
print("Values in dictionary:", d.values())

# The items() method returns a view object that displays all key-value pairs as tuples.
print("Items (Key-Value pairs) in dictionary:", d.items())

# ============================================
# Copy Method
# ============================================
# The copy() method creates a shallow copy of the dictionary.
d2 = d.copy()
print("Copied Dictionary (d2):", d2)

# ============================================
# Clear Method
# ============================================
# The clear() method removes all items from the dictionary.
d2.clear()
print("d2 after clear:", d2)

# ============================================
# Dictionary Truncation (Clearing)
# ============================================
# The clear() method on original dictionary d
d.clear()
print("d after clear:", d)

# ============================================
# Adding and Modifying Items
# ============================================
# Adding new key-value pairs and modifying existing ones.
d = {"Name": "Ram", 1: 100, "Contact": 123}
print("Initial dictionary:", d)

# Adding new key-value pair
d["City"] = "Pune"
print("After adding 'City':", d)

# Modifying existing key-value pair
d["Name"] = "Sham"
print("After modifying 'Name':", d)

# ============================================
# Iterating Through a Dictionary
# ============================================
# The for loop iterates over dictionary items and prints each key-value pair.
for i, j in d.items():
    print("Key:", i, "Value:", j)

