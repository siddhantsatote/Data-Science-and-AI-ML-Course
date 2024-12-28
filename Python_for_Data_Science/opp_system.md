### `oop_example.py`

```python
# ================================================
# Object-Oriented Programming (OOP) Example in Python
# ================================================

# Class Definition: FirstClass
class FirstClass:
    # Method definition: firstmethod
    def firstmethod(self):
        # Prints a message when the method is called
        print("This is first method from First Class")

# Creating an object (instance) of FirstClass
obj = FirstClass()

# Calling the firstmethod of the object
obj.firstmethod()


# ================================================
# Class Definition: Vehicle with constructor (__init__)
# ================================================
class Vehicle:
    # Constructor method (__init__) that initializes object properties
    def __init__(self, vhl_type):
        # The constructor receives the vehicle type and assigns it to an instance variable
        self.vehicle_type = vhl_type
        # Printing the memory address (ID) of the current object using the 'id' function
        print("ID of Self :", id(self))

    # Method definition to describe vehicle speed
    def vhl_run(self, speed):
        # Prints the vehicle's type and speed
        print(f"{self.vehicle_type} running at {speed}-kmph")

# Creating an object (instance) of Vehicle with type "Car"
car = Vehicle("Car")

# Calling the vhl_run method for the car object with a speed of 220 km/h
car.vhl_run(220)

# Printing the memory address (ID) of the car object
print("ID of outside object", id(car))

# ================================================
# Creating another instance of Vehicle with type "Truck"
# ================================================
truck = Vehicle("Truck")

# Calling the vhl_run method for the truck object with a speed of 100 km/h
truck.vhl_run(100)

# Printing the memory address (ID) of the truck object
print("ID of outside object", id(truck))
```

### **Explanation of Code:**

#### 1. **Classes and Objects:**
   - A **class** is like a blueprint for creating objects. It defines methods (functions) and attributes (variables) that an object can have.
   - An **object** is an instance of a class, and each object can hold its own data (attributes).

#### 2. **`FirstClass` and `firstmethod`:**
   - The `FirstClass` has a method called `firstmethod`, which prints a simple message when it is called.
   - You create an object `obj` from the `FirstClass` and then call its `firstmethod` using `obj.firstmethod()`.

#### 3. **Vehicle Class with Constructor:**
   - The `Vehicle` class has a **constructor method (`__init__`)**, which is a special method that is automatically called when an object is created. It initializes the object's state.
   - In this case, the constructor takes a `vhl_type` parameter, which is used to set the `vehicle_type` attribute.
   - The `vhl_run` method describes the vehicle's speed based on the `vehicle_type` and `speed` passed to it.
   
   **Key Points:**
   - **`self`**: A reference to the current object (instance) that is created from the class. It allows access to the object’s attributes and methods.
   - **`id(self)`**: Prints the memory address of the object, showing that each object has a unique ID.

#### 4. **Creating Objects:**
   - When `car = Vehicle("Car")` is called, it creates an object `car` of the `Vehicle` class, with `vehicle_type` set to `"Car"`.
   - Similarly, when `truck = Vehicle("Truck")` is called, it creates another object `truck` of the `Vehicle` class with `vehicle_type` set to `"Truck"`.

#### 5. **Calling Methods:**
   - After creating the `car` and `truck` objects, we use their `vhl_run` methods to display their speeds.

### **Key OOP Concepts:**
- **Class**: A blueprint for creating objects.
- **Object**: An instance of a class.
- **Constructor (`__init__`)**: A method used to initialize an object’s state when it is created.
- **Instance Variables**: Attributes unique to each object, such as `vehicle_type` in the `Vehicle` class.
- **Methods**: Functions that belong to the class and define behaviors, like `firstmethod` and `vhl_run`.

### **Additional Notes:**
- The constructor (`__init__`) is called automatically when a new object is created, and it is used to set up the initial state of the object.
- The `self` parameter is used to refer to the instance of the class, which allows access to its attributes and methods. It's automatically passed when you call a method on an object.
