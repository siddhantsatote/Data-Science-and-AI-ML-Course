### **polymorphism_example.py**

```python
# ================================================
# Polymorphism in Python
# ================================================

# Polymorphism allows methods to do different things based on the object it is acting upon.
# It allows us to define methods in the parent class, and override them in the child class.
# In this example, we have a Parent class and a Child class that inherits from the Parent class.

class Parent:
    def car(self):
        # Parent class method describing a usage of a car
        print("Used to go for office")

    def money(self):
        # Parent class method describing money usage
        print("Used to spend on family")


class Child(Parent):
    def car(self):
        # Overriding the car method in the Child class
        print("Used to play with car using remote")


# Creating an instance of Parent
ramesh = Parent()
# Calling the car method from Parent class
ramesh.car()  # Output: Used to go for office

# Creating an instance of Child
ram = Child()
# Calling the car method from Child class (it overrides the Parent class method)
ram.car()  # Output: Used to play with car using remote

# Calling the money method from Parent class (not overridden)
ramesh.money()  # Output: Used to spend on family
ram.money()  # Output: Used to spend on family (since Child did not override this method)

```

### **Explanation of Code:**

#### 1. **Parent Class:**
   - The `Parent` class defines two methods:
     - `car()`: A method that prints a statement about using a car for going to the office.
     - `money()`: A method that prints a statement about using money for family expenses.

#### 2. **Child Class:**
   - The `Child` class inherits from the `Parent` class, meaning it has access to the methods in `Parent` by default.
   - The `Child` class **overrides** the `car()` method. This means the `car()` method in the `Child` class will perform a different action than the one in the `Parent` class.
   - The `money()` method is not overridden in the `Child` class, so it will use the method from the `Parent` class.

#### 3. **Creating Instances:**
   - **Instance of `Parent`**: An object `ramesh` is created from the `Parent` class. When we call `ramesh.car()`, it calls the `car()` method from the `Parent` class.
   - **Instance of `Child`**: An object `ram` is created from the `Child` class. Since `Child` overrides the `car()` method, when we call `ram.car()`, it will execute the `car()` method from `Child`. However, for the `money()` method, since it's not overridden, it calls the `money()` method from the `Parent` class.

#### 4. **Polymorphism**:
   - The `car()` method in the `Parent` class behaves differently when called from the `Child` class. This is the concept of polymorphism in object-oriented programming (OOP).
   - Polymorphism means that the same method name (`car()`) behaves differently depending on whether it is called by an instance of the `Parent` or `Child` class.

---

### **Additional Notes:**
- **Polymorphism** in object-oriented programming allows methods to take on different forms based on the object.
- In Python, polymorphism is primarily achieved through **method overriding**, where a subclass provides its own implementation of a method that is already defined in the parent class.
