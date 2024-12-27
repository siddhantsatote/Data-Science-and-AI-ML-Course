### **Bank Management System Example**

This example demonstrates how a bank system works. The `Bank` class allows users to open accounts, check balances, deposit money, and withdraw funds.

---

### **Code Example**

```python
class Bank:
    """
    A simple Bank class to manage basic banking operations:
    - Open a new account
    - Check account balance
    - Deposit money
    - Withdraw money
    """

    def __init__(self, bank_name, acc_no=1000, balance=0):
        """
        Initializes a Bank object.
        :param bank_name: Name of the bank
        :param acc_no: Initial account number (default is 1000)
        :param balance: Starting balance (default is 0)
        """
        self.bank_name = bank_name
        self.acc_no = acc_no
        self.balance = balance

    def open_account(self):
        """Opens a new account and increments the account number."""
        self.acc_no += 1
        print(f"Account opened successfully at {self.bank_name}. Acc No.: {self.acc_no}")

    def check_balance(self):
        """Displays the current account balance."""
        print(f"Your account balance is: ₹{self.balance}")

    def deposit(self, amount):
        """
        Deposits the specified amount into the account.
        :param amount: Amount to deposit
        """
        self.balance += amount
        print(f"₹{amount} has been credited to your account.")

    def withdraw(self, amount):
        """
        Withdraws the specified amount from the account if sufficient funds are available.
        :param amount: Amount to withdraw
        """
        if amount > self.balance:
            print("Transaction Failed: Insufficient funds.")
        else:
            self.balance -= amount
            print(f"₹{amount} has been debited from your account.")


# Example usage
if __name__ == "__main__":
    # Create a new Bank object for a customer
    chandoo = Bank("SBI")

    # Open a new account
    chandoo.open_account()  # Output: Account opened successfully at SBI. Acc No.: 1001

    # Check balance
    chandoo.check_balance()  # Output: Your account balance is: ₹0

    # Deposit money
    chandoo.deposit(10000)  # Output: ₹10000 has been credited to your account.

    # Check balance again
    chandoo.check_balance()  # Output: Your account balance is: ₹10000

    # Withdraw money
    chandoo.withdraw(4900)  # Output: ₹4900 has been debited from your account.

    # Check balance after withdrawal
    chandoo.check_balance()  # Output: Your account balance is: ₹5100

    # Attempt to withdraw more than the balance
    chandoo.withdraw(7000)  # Output: Transaction Failed: Insufficient funds.
```

---

### **Key Features**
1. **Encapsulation**: Data like `acc_no` and `balance` are encapsulated within the `Bank` class.
2. **Methods**: 
   - `open_account`: Opens a new account with an incremented account number.
   - `check_balance`: Displays the current account balance.
   - `deposit`: Adds the specified amount to the account balance.
   - `withdraw`: Deducts the amount if the balance is sufficient.
3. **Custom Error Handling**: The withdrawal method ensures no overdrawing of funds.

---

### **GitHub-Friendly Practices**
1. **Modular Code**: The code is organized with a `main` block for execution.
2. **Documentation**: Includes docstrings for classes and methods to explain their functionality.
3. **Readability**: Clear variable names, comments, and formatted outputs.

---

### **Suggested GitHub README**
```markdown
# Bank Management System

A simple Python-based banking system for managing customer accounts. Users can:
- Open a new account
- Deposit money
- Withdraw funds
- Check their account balance

## How to Use

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/bank-management-system.git
   ```
2. Navigate to the project directory:
   ```bash
   cd bank-management-system
   ```
3. Run the script:
   ```bash
   python bank.py
   ```

## Features

- Create and manage customer accounts.
- Perform basic banking transactions.
- Prevent overdraft with error handling.

## Example Output

```plaintext
Account opened successfully at SBI. Acc No.: 1001
Your account balance is: ₹0
₹10000 has been credited to your account.
Your account balance is: ₹10000
₹4900 has been debited from your account.
Your account balance is: ₹5100
Transaction Failed: Insufficient funds.
