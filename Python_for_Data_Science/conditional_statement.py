# Python Control Statements: if, elif, else
# =========================================
# Definition:
# The `if` statement is used to test a condition and execute code blocks based on whether the condition evaluates to `True` or `False`.
#
# Syntax:
# if condition:
#     # code to execute if the condition is true
# elif another_condition:
#     # code to execute if the previous condition is false and this condition is true
# else:
#     # code to execute if all conditions are false

# -----------------------------------------
# Program 1: Check if a person can vote
# -----------------------------------------
age = int(input("Enter Age: "))  # Input age from the user

if age >= 18:
    print("You can vote. 🗳️")  # Condition met for eligible voters
else:
    print("You cannot vote. ❌")  # Condition for ineligible voters

# Note: `if-else` is used for two possible outcomes based on a condition.

# -----------------------------------------
# Program 2: Categorize age groups
# -----------------------------------------
age = int(input("Enter Age: "))  # Input age from the user

if age <= 0:
    print("Invalid Age! Please enter a positive number.")
elif age < 14:
    print("You are a Child. 🧒")
elif age <= 50:
    print("You are Young. 🧑")
elif 50 < age <= 100:  # age > 50 and age <= 100
    print("You are a Senior Citizen. 👴")
else:
    print("The age entered does not exist in the natural range.")

# Note: `if-elif-else` allows testing multiple conditions sequentially.

# -----------------------------------------
# Program 3: Check if a number is Negative, Positive, or Zero
# -----------------------------------------
num = int(input("Enter a number: "))  # Input a number from the user

if num < 0:
    print("The number is Negative. ➖")
elif num > 0:
    print("The number is Positive. ➕")
else:
    print("The number is Zero. 🟰")

# Note: Comparison operators (`<`, `>`, `==`) are used to evaluate conditions.

# -----------------------------------------
# Program 4: Check if a number is Even or Odd
# -----------------------------------------
num = int(input("Enter a number: "))  # Input a number from the user

if num % 2 == 0:
    print("The number is Even. 🔢")
else:
    print("The number is Odd. 🔗")

# Note: The modulus operator (`%`) returns the remainder of division.
# If a number is divisible by 2 with no remainder, it is even.

# -----------------------------------------
# Program 5: Calculate Electricity Bill for Home Users
# -----------------------------------------
# Problem:
#   1. Units < 100: No Bill
#   2. Units >= 100 to 200: Rs. 5 per unit
#   3. Units >= 200 to 300: Rs. 10 per unit
#   4. Units > 300: Rs. 20 per unit
# Example:
#   Input: 259 units
#   Output: Rs. 1090 (calculated as below)
#       - First 100 units: Rs. 0
#       - Next 100 units: 100 * 5 = Rs. 500
#       - Remaining 59 units: 59 * 10 = Rs. 590
#       - Total Bill = Rs. 1090

unit = int(input("Enter the number of electricity units: "))  # Input units consumed

if unit < 100:
    print("No Bill. You consumed less than 100 units. 💡")
    bill = 0
elif 100 <= unit < 200:
    bill = (unit - 100) * 5  # Units above 100 billed at Rs. 5/unit
elif 200 <= unit < 300:
    bill = ((unit - 200) * 10) + 500  # First 100 units free + Next 100 units at Rs. 5/unit
else:
    bill = ((unit - 300) * 20) + 1000 + 500  # Rs. 20/unit for units > 300

# Display the calculated bill
print(f"Your electricity bill is: Rs. {bill} 💰")

# Notes:
# - Arithmetic operations (e.g., subtraction, multiplication) are used for calculations.
# - Logical operators (`and`, `or`) are implicitly applied in range conditions (e.g., `200 <= unit < 300`).
