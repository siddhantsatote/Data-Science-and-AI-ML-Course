# ============================================
# Implementation of Modules and Packages in Python
# ============================================

# Importing specific functions from a custom package
from my_package import reception, course  # Importing specific functions 'greet' and 'farewell' from reception module, and 'time_da', 'data_analytics' from course module
import calculator  # Importing the entire calculator module

# Calling function from reception module
reception.greet("Sachin")  # This will call the 'greet' function and print a greeting message with the name "Sachin"

# Accessing a variable from the course module
print("Time for DA", course.time_da)  # Printing the value of 'time_da' from the course module

# Calling a function from the course module
course.data_analytics()  # This will call the 'data_analytics' function from the course module

# Accessing another variable from the course module
print("Time for DS", course.time_ds)  # Printing the value of 'time_ds' from the course module

# Calling another function from the course module
course.data_science()  # This will call the 'data_science' function from the course module

# Calling functions from the calculator module
calculator.addition(2, 6, 3, 9)  # Calls the 'addition' function with four numbers as arguments
calculator.multiply(4, 8, 2, 5)  # Calls the 'multiply' function with four numbers as arguments

# Calling farewell function from reception module
reception.farewell("Sachin")  # This will call the 'farewell' function and print a farewell message with the name "Sachin"


# ============================================
# Explanation of the Code
# ============================================

"""
1. **Imports**:
   - `from my_package import reception, course`: This imports specific modules (reception and course) from the custom package 'my_package'.
   - `import calculator`: This imports the entire calculator module.
   
2. **Calling Functions from Imported Modules**:
   - `reception.greet("Sachin")`: Calls the `greet` function from the 'reception' module and passes the name "Sachin" as an argument to print a greeting.
   - `course.time_da`: This accesses a variable `time_da` from the 'course' module and prints its value.
   - `course.data_analytics()`: Calls the `data_analytics` function from the 'course' module.
   - `course.time_ds`: Accesses and prints the `time_ds` variable from the 'course' module.
   - `course.data_science()`: Calls the `data_science` function from the 'course' module.
   - `calculator.addition(2, 6, 3, 9)`: Calls the `addition` function from the calculator module and passes four numbers as arguments to be added.
   - `calculator.multiply(4, 8, 2, 5)`: Calls the `multiply` function from the calculator module and multiplies the four numbers.
   - `reception.farewell("Sachin")`: Calls the `farewell` function from the 'reception' module and passes the name "Sachin" as an argument for a farewell message.

3. **Explanation of Modules and Packages**:
   - A **module** is a single Python file that can contain functions, classes, or variables that you can use in other scripts.
   - A **package** is a collection of modules bundled together, which makes it easier to organize related modules. In this example, `my_package` is the package that contains the `reception` and `course` modules.
   
4. **Using Functions and Variables from Imported Modules**:
   - By importing specific functions or variables from modules, you can use their functionality without having to redefine them in your code. This promotes reusability and modularity.

### Note:
Make sure to have the `my_package` directory and `calculator` module in the same directory or installed as part of the Python environment. The `my_package` should have `reception.py` and `course.py` modules inside it, containing the appropriate functions and variables.

"""
