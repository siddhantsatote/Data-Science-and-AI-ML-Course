# ================================================
# Lambda Functions in Python
# ================================================

# List of numbers
ls = [4, 1, 9, 3, 7, 5]

# Using lambda function with map to square each element in the list
square_ls = list(map(lambda x: x ** 2, ls))
print("Squared List:", square_ls)

# Explanation:
# A lambda function is a small anonymous function defined using the `lambda` keyword.
# The syntax of a lambda function is: `lambda arguments: expression`
# In this case, `lambda x: x ** 2` squares each element in the list.
# The `map()` function applies this lambda function to each element in the list `ls`, 
# and we convert the result into a list using `list()`.

# String for checking vowels
st = "Congratulation"

# Using lambda function with map to check if each character is a vowel or not
vowels = list(map(lambda x: f"{x} is Vowel" if x in "aeiou" else f"{x} is not Vowel", st))
print("Vowel Check List:", vowels)

# Explanation:
# The second example uses a lambda function to check if each character in the string `st` is a vowel.
# The lambda function checks if a character (`x`) is in the string "aeiou" (the vowels),
# and returns a message accordingly using a ternary conditional expression.
# `map()` applies the lambda function to each character of the string, and we convert the result into a list.
