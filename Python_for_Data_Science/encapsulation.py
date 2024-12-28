# ============================================
# Encapsulation Example in Python
# ============================================

# Class Definition for ATM
class ATM:
    # Constructor (__init__) method to initialize the ATM object with bank_name, balance, and pin
    def __init__(self, bank_name):
        print(f"Welcome to {bank_name} ATM")
        self.bank_name = bank_name    # Public attribute: bank_name
        self._balance = 12000         # Private attribute: _balance
        self._pin = 1234              # Private attribute: _pin

    # Method to check the account balance after validating the pin
    def check_balance(self):
        pin = int(input("Enter PIN : "))    # Take PIN input from user
        if pin == self._pin:                 # If the PIN matches the stored one
            print(f"Account balance : {self._balance}")
        else:
            print("Wrong PIN, Try Again!")
            self.check_balance()  # Recursively ask the user to try again if the PIN is wrong

    # Method to withdraw money from the account
    def withdraw(self):
        pin = int(input("Enter PIN : "))    # Take PIN input from user
        if pin == self._pin:                 # If the PIN matches the stored one
            amt = int(input("Enter the Amount : "))  # Take amount to withdraw
            if amt <= self._balance:                # Check if sufficient balance is available
                print("Amount Withdrawn")
                self._balance -= amt                 # Deduct the amount from balance
            else:
                print("Insufficient Fund, Try Again")
                self.withdraw()  # Recursively ask the user to try again if insufficient funds
        else:
            print("Wrong PIN, Try Again!")
            self.check_balance()  # Recursively check balance if PIN is wrong


# Creating an ATM object for the SBI bank
sbi = ATM("SBI")
sbi.check_balance()  # Check the balance
sbi.withdraw()       # Perform a withdrawal

# ============================================
# Encapsulation with inheritance
# ============================================

class abc:
    def __init__(self):
        self.a = 10          # Public attribute
        self._b = 20         # Protected attribute (can be accessed by child class)
    
    def _methodA(self):
        print("Method A")    # Protected method (can be accessed by child class)

    def methodB(self):
        print("Method B")    # Public method


# Child class that inherits from abc
class xyz(abc):
    pass


# Creating an object of class xyz
obj = xyz()

# Calling methodB from the parent class
obj.methodB()

# Accessing the public attribute 'a' from the parent class
print(obj.a)

# Accessing the protected method '_methodA' and attribute '_b' from the parent class
obj._methodA()
print(obj._b)

