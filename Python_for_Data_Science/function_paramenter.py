# ============================================
# Types of Function Parameters in Python
# ============================================

# Required Positional Arguments
# These are the arguments that must be passed to the function in the correct order.
# If the required positional arguments are not provided, Python will raise a TypeError.

def biodata(name, city, age):
    """
    Function to print personal biodata.
    Takes 3 parameters: name, city, and age.
    """
    print("Name :", name)
    print("City :", city)
    print("Age :", age)


# Correct usage (order matters)
biodata("Sachin", "Mumbai", 42)

# Incorrect usage (order matters)
biodata(42, "Sachin", "Mumbai")  # Logically incorrect, but Python won't stop this.

# The following will raise an error due to missing a required argument:
# biodata("Sachin", 42)   # Uncomment this to see the error

print("=" * 50)

# Keyword Arguments
# You can pass arguments using their name (keywords), making the order of parameters irrelevant.
# This improves code readability and reduces errors.

biodata(age=54, city="Pune", name="Sachin")
biodata(city="Aurangabad", age=23, name="Sachin")

# The following will raise an error due to invalid syntax (the first argument can't be positional here):
# biodata(city="Pune", age=29, "Sachin")   # Uncomment to see the error
# biodata("Mumbai", age=32, name="Sachin")   # Uncomment to see the error

print("=" * 50)

# Default Arguments
# Default arguments are values that are provided when the function is called, but they can be overridden by the caller.

def resume(name, age, city="Mumbai"):
    """
    Function to print resume information.
    Takes 2 mandatory parameters: name and age.
    One optional parameter with a default value: city.
    """
    print("Name :", name)
    print("City :", city)
    print("Age :", age)

# Using default city as 'Mumbai'
resume("Sachin", 43)

# Overriding default city with 'Pune'
resume("Sachin", 43, "Pune")

# Using default city for a different person
resume("Ram", 32)

print("=" * 50)

# Variable Length Arguments
# If you don't know how many arguments you need to pass to a function, use *args.
# *args collects all positional arguments passed to the function into a tuple.

def demo_A(*arg):
    """
    Function that takes variable-length positional arguments.
    Prints the arguments and iterates over them.
    """
    print(arg)  # Print the tuple containing all arguments.
    for i in arg:  # Loop through each argument
        print(i)

# Calling with no arguments
demo_A()

# Calling with multiple arguments
demo_A(12, "G", 3.14)

print("=" * 50)

# Keyword Variable Length Arguments
# **kwargs allows you to pass an arbitrary number of keyword arguments (key-value pairs) to a function.
# **kwargs collects the arguments into a dictionary.

def demo_B(**arg):
    """
    Function that takes variable-length keyword arguments.
    Prints the dictionary of keyword arguments and iterates over it.
    """
    print(arg)  # Print the dictionary containing all keyword arguments.
    for i, j in arg.items():  # Iterate over the key-value pairs in the dictionary
        print(i, j)

# Calling with no keyword arguments
demo_B()

# Calling with multiple keyword arguments
demo_B(Name="Ram", City="Pune", Email="ram@gmail.com")

# The following will work similarly but with no keyword arguments
# demo_B()  # Uncomment to see it work
