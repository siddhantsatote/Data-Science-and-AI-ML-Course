# ============================================
# Functions in Python
# ============================================

# Non-Parameterized Function
# A function that does not take any parameters or arguments. 
# It's a simple function that performs an action without requiring any input.

def greet():
    """
    Function that prints a welcome message.
    """
    print("Welcome")

# Function Call
greet()  # This will call the greet function and print "Welcome"


# ============================================

# Parameterized Function
# A function that takes one or more parameters (arguments) to perform an action.

def greetings(name):
    """
    Function that takes a name as a parameter and prints a greeting message.
    """
    print("Welcome", name)

# Function Call
greetings("Ram")  # Calling the greetings function with the argument "Ram"


# ============================================

# Function with Return Value
# A function that returns a value using the 'return' statement, which can then be used in other parts of the program.

def addition(a, b):
    """
    Function that takes two numbers and returns their sum.
    """
    return a + b

# Function Call
result = addition(5, 7)  # Calling the addition function with arguments 5 and 7
print(result)  # Output will be 12 because the sum of 5 and 7 is 12


# ============================================

# Prime Function
# A function to check whether a given number is a prime number.
# A prime number is a number that is greater than 1 and divisible only by 1 and itself.

def isPrime(num):
    """
    Function that checks if a number is prime.
    If the number is divisible by any number other than 1 and itself, it is not a prime.
    """
    for i in range(2, num):  # Iterate from 2 to num-1
        if num % i == 0:  # If num is divisible by any number in this range, it's not a prime
            print("Not Prime")
            break
    else:
        print("Prime")  # If no factors are found, it is prime

# Function Call
isPrime(67)  # Check if 67 is a prime number


# ============================================

# Fibonacci Series Function
# This function generates the Fibonacci series up to a given limit. 
# In the Fibonacci series, each number is the sum of the two preceding ones, usually starting with 0 and 1.

def fibonacci(limit):
    """
    Function that prints Fibonacci series up to the given limit.
    """
    start = 0  # Starting number of the series
    end = 1  # Next number in the series
    count = 0  # Counter to track how many numbers are printed
    while count < limit:  # Keep generating numbers until the limit is reached
        print(start)
        temp = start + end  # Calculate the next number
        start = end  # Update start to the previous end value
        end = temp  # Update end to the new number
        count += 1  # Increment the counter

# Function Call
fibonacci(10)  # Prints first 10 numbers of the Fibonacci series


# ============================================

# Armstrong Number Function
# An Armstrong number is a number that is equal to the sum of its own digits each raised to the power of the number of digits.
# For example, 153 is an Armstrong number because:
# 1^3 + 5^3 + 3^3 = 153.

def armstrong(num):
    """
    Function that checks if a number is an Armstrong number.
    An Armstrong number is a number that is equal to the sum of its own digits each raised to the power of the number of digits.
    """
    str_num = str(num)  # Convert the number to a string to easily iterate over digits
    length = len(str_num)  # Find the number of digits
    total = 0  # Variable to store the sum of the digits raised to the power of 'length'
    for i in str_num:  # Iterate over each digit of the number
        total += int(i) ** length  # Add the digit raised to the power of 'length' to total

    if total == num:  # If the total is equal to the original number, it is an Armstrong number
        print("The number is Armstrong")
    else:
        print("The number is Not Armstrong")  # If not, it's not an Armstrong number

# Function Call
armstrong(1634)  # Check if 1634 is an Armstrong number


# ============================================
# Explanation of the Functions in the Code
# ============================================

"""
1. Non-Parameterized Function (greet):
   - This function does not require any arguments and simply prints a welcome message.

2. Parameterized Function (greetings):
   - A function that accepts a parameter (name) and prints a greeting using that parameter.

3. Function with Return (addition):
   - A function that accepts two numbers, adds them, and returns the result. The returned result is stored in a variable and printed.

4. Prime Function (isPrime):
   - This function checks whether the given number is a prime number by checking divisibility from 2 to the number-1.
   - If any divisor is found, the number is not prime; otherwise, it is prime.

5. Fibonacci Function (fibonacci):
   - This function generates and prints the Fibonacci series up to a specified limit.
   - It starts with 0 and 1, and each subsequent number is the sum of the previous two.

6. Armstrong Function (armstrong):
   - This function checks if a given number is an Armstrong number.
   - An Armstrong number is equal to the sum of its own digits each raised to the power of the number of digits.

In each case, the function performs a specific task, and you can call the function with required parameters to get the desired output.
"""
