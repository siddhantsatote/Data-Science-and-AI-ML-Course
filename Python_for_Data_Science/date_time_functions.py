# ============================================
# Python Date and Time Modules Example
# ============================================

# Import necessary classes from datetime and time modules
from datetime import datetime, date, timedelta
from time import strptime, strftime, sleep, time

# ============================================
# Current Date and Time
# ============================================
# Get the current date and time
current_datetime = datetime.now()
print("Current Date and Time:", current_datetime)

# Get today's date only (without time part)
today = datetime.today().date()
print("Today's Date:", today)

# Get the current day (day of the month)
day = datetime.today().day
print("Day of the month:", day)

# Get the weekday name (e.g., "Monday")
week_day = today.strftime("%A")
print("Weekday Name:", week_day)

# Get the current month as a number (1-12)
month = today.month
print("Month number:", month)

# Get the full name of the month (e.g., "January")
month_name = today.strftime("%B")
print("Month Name:", month_name)

# Get the current year
year = today.year
print("Year:", year)

# Get the short form of the year (last two digits)
year_short = today.strftime("%y")
print("Short Year:", year_short)

# ============================================
# Date Arithmetic
# ============================================
# Add 153 days to the current date
future_date_day = today + timedelta(days=153)
print("Future Date (153 days later):", future_date_day)

# Add 43 weeks (303 days) to the current date
future_date_week = today + timedelta(weeks=43)
print("Future Date (43 weeks later):", future_date_week)

# Calculate the age based on date of birth (DOB)
dob = date(1990, 3, 15)
age = today.year - dob.year
print("Age:", age)

# ============================================
# Date Formatting
# ============================================
# Different date format examples using strftime method
print("Date in DD-MM-YY format:", today.strftime("%d-%m-%y"))
print("Date in DD-MM-YYYY format:", today.strftime("%d-%m-%Y"))
print("Date in Day (abbreviated) DD-MM-YY format:", today.strftime("%a %d-%m-%y"))
print("Date in Day (abbreviated) DD-MM-YYYY format:", today.strftime("%a %d-%m-%Y"))
print("Date in Day Full, DD Month Full, YYYY format:", today.strftime("%A %d %B %Y"))

# Formatting current date and time
print("Current Date and Time in Full:", current_datetime.strftime("%A %d %B %Y - %H:%M"))
print("Current Date and Time in 12-hour format:", current_datetime.strftime("%A %d %B %Y - %I:%M %p"))

# ============================================
# Performance Measurement
# ============================================
# Measure the time it takes to execute a block of code
count = 0
start = time()  # Record start time

# Some computation to measure execution time
for i in range(1000000):
    count += i

end = time()  # Record end time
print("Time for Execution:", end - start)

# ============================================
# Sleeping Between Code Execution
# ============================================
# Pausing the program execution for 2 seconds
for i in range(5):
    print("i =", i)
    sleep(2)  # Sleep for 2 seconds
