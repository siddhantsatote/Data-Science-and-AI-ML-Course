### `for_while_loops.py`

```python
# ================================================
# FOR Loop Examples in Python
# ================================================

# Example 1: Print the numbers from 0 to 6
print("Print numbers from 0 to 6:")
for i in range(7):
    print(i)  # Range function generates numbers from 0 to 6

# Example 2: Check if numbers in the list are even or odd
print("\nCheck if numbers are even or odd:")
ls = [84, 45, 27, 82, 49, 38, 94]
for num in ls:
    if num % 2 == 0:
        print(f"{num} is Even")  # Even numbers are divisible by 2 without remainder
    else:
        print(f"{num} is Odd")  # Odd numbers have a remainder of 1 when divided by 2

# ================================================
# WHILE Loop Examples in Python
# ================================================

# Example 3: Print the first 10 numbers using while loop
print("\nPrint numbers from 1 to 10 using while loop:")
start = 1
stop = 10
while start <= stop:
    print(start)
    start = start + 1  # Increment the start value by 1

print("Start value after loop:", start)  # Shows the final value of start after the loop

# Example 4: Print the numbers 20, 17, 14, 11, 8, 5, 2 using while loop
print("\nPrint numbers from 20 to 2 with step of -3:")
start = 20
stop = 2
while start >= stop:
    print(start)
    start = start - 3  # Decrement the start value by 3

print("Start value after loop:", start)  # Shows the final value of start after the loop

# ================================================
# Prime Number Check using FOR Loop
# ================================================

# Example 5: Check if the given number is prime
from time import sleep, time

num = int(input("\nEnter a number to check if it is prime: "))
start = time()

for i in range(2, num):
    if num % i == 0:
        print("Not Prime")
        break
    sleep(1)  # Sleep for 1 second between iterations (for demonstration purpose)
else:
    print("Prime Number")

end = time()
print("Time of execution =", end - start)  # Time taken to execute the prime check

# ================================================
# Find Prime Numbers Between 1000 and 10000
# ================================================

# Example 6: Find prime numbers between 1000 and 10,000
print("\nPrime numbers between 1000 and 10000:")
start = 1000
stop = 10000
count = 0
while start <= stop:
    for i in range(2, start // 2):
        if start % i == 0:
            break  # If divisible by any number between 2 and num/2, it's not prime
    else:
        count += 1
        print(f"{start} is Prime Number")  # Print prime number
    start += 1

print(f"Total prime numbers found: {count}")

# ================================================
# Number Guessing Game
# ================================================

# Example 7: Number Guessing Game
import random

num = random.randint(1000, 2000)  # Random number between 1000 and 2000
guess = int(input("\nGuess the number between 1000 and 2000: "))

while True:
    if guess > num:
        print("Too Large")
        guess = int(input("Guess the number again: "))
    elif guess < num:
        print("Too Small")
        guess = int(input("Guess the number again: "))
    else:
        print("Congratulations! Your guess is right.")
        break  # Exit the loop when the correct number is guessed
```

### **Explanation:**

1. **For Loop - Printing Numbers from 0 to 6**:
    - The `range(7)` generates numbers from 0 to 6.
    - `for i in range(7):` iterates over each value in the range and prints it.

2. **For Loop - Check if Numbers are Even or Odd**:
    - A list `ls` is defined with numbers. The loop checks each number using `if num % 2 == 0` to determine if it is even (divisible by 2) or odd (not divisible by 2).
    - `print(f"{num} is Even")` or `print(f"{num} is Odd")` outputs the result.

3. **While Loop - Print Numbers from 1 to 10**:
    - `start` begins at 1 and the loop continues as long as `start <= stop`.
    - Each time through the loop, `start` is incremented by 1, printing the current value of `start`.

4. **While Loop - Print Numbers from 20 to 2 with Step of -3**:
    - This loop starts at 20 and decrements by 3 on each iteration until `start` is less than or equal to 2.
    - The `start = start - 3` line decreases the value of `start` by 3 each time.

5. **Prime Number Check**:
    - The program checks if a number `num` is prime by dividing it with every number from 2 to `num-1`. 
    - If any division has no remainder (`num % i == 0`), the number is not prime.
    - `sleep(1)` introduces a 1-second delay between iterations for a clearer demonstration of how the loop works.

6. **Prime Numbers Between 1000 and 10000**:
    - A `while` loop iterates through the numbers between 1000 and 10000.
    - For each number, it checks if it is divisible by any number in the range `2` to `num//2`. If no divisor is found, the number is printed as a prime number.

7. **Number Guessing Game**:
    - A random number between 1000 and 2000 is generated using `random.randint(1000, 2000)`.
    - The program continuously asks for a user guess using a `while True` loop.
    - If the guess is higher than the number, it prints "Too Large". If it's lower, it prints "Too Small".
    - The loop continues until the correct number is guessed, at which point "Congratulations!" is printed.
