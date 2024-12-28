# ============================================
# Python MySQL Connection Example
# ============================================

# Definition:
# The `mysql.connector` module allows Python to interact with MySQL databases.
# It provides functionality to connect to the database, execute SQL queries, and manage database operations.

# Syntax:
# connector.connect(host="hostname", user="username", password="password")
# This establishes a connection with the MySQL server.

# --------------------------------------------
# Step 1: Creating Connection with MySQL
# --------------------------------------------
  
from mysql import connector

conn = connector.connect(
    host="localhost",  # Replace with the MySQL server host (default: 127.0.0.1)
    user="root",       # Replace with the username for the MySQL server
    password="root"    # Replace with the password for the MySQL server
)

# Check if the connection is successful
if conn:
    print("Connected to MySQL Database ✅")
else:
    print("Connection Failed ❌")

# --------------------------------------------
# Step 2: Creating a Cursor
# --------------------------------------------
# A cursor is used to execute SQL commands and fetch data.
cursor = conn.cursor()

# --------------------------------------------
# Step 3: Creating a Database
# --------------------------------------------
query = "Create Database if not exists pythonbatch"
cursor.execute(query)  # Execute the query
print("Database Created 🗄️")

# --------------------------------------------
# Step 4: Selecting the Database
# --------------------------------------------
query = "use pythonbatch"
cursor.execute(query)  # Execute the query
print("Database Selected ✅")

# --------------------------------------------
# Step 5: Creating a Table
# --------------------------------------------
query = """
Create table if not exists students(
    Std_ID int primary key not null,      -- Unique identifier for students
    Std_Name varchar(60) not null,        -- Student's name
    Std_Contact int not null,             -- Student's contact number
    Std_Address varchar(100) not null     -- Student's address
);
"""
cursor.execute(query)  # Execute the query
print("Table Created 📋")

# --------------------------------------------
# Step 6: Inserting Records into the Table
# --------------------------------------------
# Uncomment the following lines to insert data into the `students` table.

# query = """Insert into students
# values
# (1, "Ram", 12345, "Rahatani, PCMC"),
# (2, "Sham", 23456, "Shivaji Nagar, Pune"),
# (3, "Sita", 34567, "Sangvi Pune"),
# (4, "Gita", 45678, "Pimple Saudagar, PCMC");
# """
# cursor.execute(query)  # Execute the query
# print("Data Inserted ✅")
# conn.commit()  # Commit the transaction to save changes

# --------------------------------------------
# Step 7: Fetching Records from the Database
# --------------------------------------------
query = "Select * from Students;"  # Query to fetch all records from the table
cursor.execute(query)  # Execute the query
data = cursor.fetchall()  # Fetch all records

# Display the data
for record in data:
    print(record)

# --------------------------------------------
# Notes:
# 1. Replace `"root"` and `"root"` with your actual MySQL username and password.
# 2. Always use `conn.commit()` after inserting or updating data to save the changes.
# 3. Handle exceptions for better error handling and debugging in real-world applications.
# --------------------------------------------
