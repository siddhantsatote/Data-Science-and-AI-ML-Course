import cx_Oracle

# ============================================
# Python Oracle Database Connection Example
# ============================================

# Definition:
# The `cx_Oracle` module allows Python to interact with Oracle databases.
# It provides functionality to connect to the database, execute SQL queries, 
# and fetch or manipulate data.

# Syntax:
# cx_Oracle.connect(user="username", password="password", dsn="hostname/service_name", mode=optional_mode)
# This establishes a connection with the Oracle database.

# --------------------------------------------
# Step 1: Connecting to Oracle Database
# --------------------------------------------
# Using the `connect` method to establish a connection
conn = cx_Oracle.connect(
    dsn="localhost:1521/xe",  # Data Source Name: "hostname:port/service_name"
    user="sys",               # Oracle username (for SYSDBA mode, use "sys")
    password="root",          # Oracle password
    mode=cx_Oracle.SYSDBA     # SYSDBA mode allows privileged operations
)

# Check if the connection is successful
if conn:
    print("Connected to Oracle Database ✅")
else:
    print("Connection Failed ❌")

# --------------------------------------------
# Step 2: Creating a Cursor
# --------------------------------------------
# A cursor is required to execute SQL commands and retrieve data from the database.
cursor = conn.cursor()

# --------------------------------------------
# Step 3: Fetching Data from the Database
# --------------------------------------------
# Query to select records where location is 'Hyderabad'
query = "Select * from People where location='Hyderabad'"

# Execute the query
cursor.execute(query)

# Fetch all matching records
data = cursor.fetchall()

# Display the data
for record in data:
    print(record)

# --------------------------------------------
# Notes:
# 1. Replace `"localhost:1521/xe"` with your actual Oracle database DSN.
# 2. Replace `"sys"` and `"root"` with your Oracle username and password.
# 3. Ensure the `People` table exists and has the `location` column.
# 4. Always close the cursor and connection in production code to release resources.
# 5. Use exception handling (`try-except`) for better error debugging.
# --------------------------------------------
