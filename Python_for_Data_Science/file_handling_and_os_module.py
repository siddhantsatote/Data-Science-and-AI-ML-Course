# ============================================
# OS Module and File Handling in Python
# ============================================

# Importing OS module
import os

# Working with the current directory
current_directory = os.getcwd()  # Get the current working directory
print("Current Working Directory :", current_directory)

# Changing the directory to a specific folder
os.chdir(r"C:\Users\Soft\Desktop\Py\Demo")  # Change to the specified directory
current_directory = os.getcwd()  # Get the new working directory
print("Current Working Directory :", current_directory)

# Listing files in the current directory
ls = os.listdir()  # Get the list of files in the directory
for i in ls:
    print(i)  # Print each file or directory name

print("="*50)

# Creating a new directory
os.mkdir("Python1201")  # Create a new directory named 'Python1201'

# Listing files after creating the new directory
ls = os.listdir()
for i in ls:
    print(i)

print("="*50)

# Removing a file
os.remove("home_data.csv.zip")  # Remove the file 'home_data.csv.zip'
ls = os.listdir()  # List files after deletion
for i in ls:
    print(i)

print("="*50)

# Removing the created directory
os.rmdir("Python1201")  # Remove the directory 'Python1201'
ls = os.listdir()  # List files after removing the directory
for i in ls:
    print(i)

# Renaming a directory or file
os.rename("AI-1094", "Artificial Intelligence")  # Rename 'AI-1094' to 'Artificial Intelligence'

# ============================================
# File Handling in Python
# ============================================

# Writing to a file
file = open("notes.txt", "w")  # Open the file 'notes.txt' in write mode
file.write("This file is created using python and text added using write mode.")  # Write text to the file
file.close()  # Close the file

# Reading from a file
file = open("notes.txt", "r")  # Open the file 'notes.txt' in read mode
data = file.read()  # Read the content of the file
print(data)  # Print the content of the file
file.close()  # Close the file

# Appending text to a file
file = open("notes.txt", "a")  # Open the file 'notes.txt' in append mode
file.write(" This text is added using append mode")  # Append text to the file
file.close()  # Close the file

# Writing again to a file in write mode
file = open("notes.txt", "w")  # Open the file 'notes.txt' in write mode
file.write("This is second time using w mode")  # Overwrite the file content
file.close()  # Close the file

# Using 'r+' mode (read and write mode)
with open("notes.txt", "r+") as file:  # Open the file 'notes.txt' in read-write mode
    print(file.read())  # Read and print the content
    file.seek(0)  # Move the cursor to the beginning of the file
    file.write("This is r+ mode")  # Overwrite the file content with new text

# Using 'w+' mode (write and read mode)
with open("notes2.txt", "w+") as file:  # Create and open 'notes2.txt' in write-read mode
    file.write("This is new file created using w+")  # Write text to the file
    file.seek(0)  # Move the cursor to the beginning of the file
    print(file.read())  # Read and print the content of the file

# Using 'a+' mode (append and read mode)
with open("notes2.txt", "a+") as file:  # Open 'notes2.txt' in append-read mode
    file.write("\nThis is a+ mode")  # Append new text to the file
    file.seek(0)  # Move the cursor to the beginning of the file
    print(file.read())  # Read and print the entire content of the file

