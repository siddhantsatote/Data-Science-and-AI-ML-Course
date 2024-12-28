# ================================================
# Inheritance in Python
# ================================================

# Base Class: Vehicle
class Vehicle:
    def __init__(self, speed, vehicle_type, break_type):
        self.vehicle_type = vehicle_type  # Initialize vehicle type
        self.break_type = break_type      # Initialize brake type
        self.speed = speed                # Initialize speed

    # Method to represent the movement of a vehicle
    def move(self):
        print(f"The {self.__class__.__name__} is moving")  # Prints the moving message

# Explanation:
# The Vehicle class is the base class with a constructor (__init__) that initializes the vehicle's type, speed, and brake type.
# The `move` method in the Vehicle class prints the movement message, which can be called by its subclasses.

# Derived Class: Car (inherits from Vehicle)
class Car(Vehicle):
    pass  # No additional properties or methods, just inheriting from Vehicle

# Creating an object of the Car class
suzuki = Car(200, "Sedan", "ABS")
suzuki.move()  # Calling the 'move' method from the Vehicle class through Car

# Explanation:
# The Car class is a subclass of the Vehicle class. Since no new methods or attributes are added, it simply inherits everything from Vehicle.

# Creating an object of the Vehicle class
v = Vehicle(400, "Unknown", "Airbrake")
v.move()  # Calling the 'move' method from the Vehicle class directly

# Explanation:
# We create an object of the Vehicle class and call the move method. The method works even for the base class itself.

# Accessing attributes of the object
print(suzuki.speed)  # Accessing speed of the Suzuki object

# Explanation:
# We are accessing the speed attribute of the Suzuki object, which was inherited from the Vehicle class.

# Printing the class names of the objects
print(v.__class__.__name__)  # Outputs the class name of object 'v' (Vehicle)
print(suzuki.__class__.__name__)  # Outputs the class name of object 'suzuki' (Car)

# Explanation:
# We use the `__class__.__name__` to print the class name of the objects 'v' and 'suzuki'. It shows that 'v' is an instance of Vehicle, and 'suzuki' is an instance of Car.

print("**" * 50)

# Parent Class: Parent
class Parent:
    def __init__(self, name, education):
        self.name = name  # Initialize name
        self.education = education  # Initialize education level

    # Method to represent the office routine
    def office(self):
        print(f"{self.name} going to office")

    # Method to represent the lunch routine
    def lunch(self):
        print(f"{self.name} having lunch")

# Explanation:
# The Parent class is a base class that includes methods to represent common activities like going to office and having lunch.

# Child Class: Child (inherits from Parent)
class Child(Parent):
    # Additional method specific to Child
    def trekking(self):
        print(f"{self.name} going to trekking")

# Explanation:
# The Child class inherits from the Parent class, meaning it can access all methods from Parent, including office() and lunch().
# Additionally, it defines its own method, `trekking`.

# Creating an object of the Child class
ram = Child("Ram", "B.Ed.")
ram.office()  # Calling office method from Parent class
ram.trekking()  # Calling trekking method from Child class

# Explanation:
# We create an object of the Child class (ram), which has access to the office method from Parent and its own trekking method.

# Creating an object of the Parent class
ramesh = Parent("Ramesh", "HSC")
ramesh.office()  # Calling office method from Parent class

# Explanation:
# We create an object of the Parent class (ramesh) and call the office method. The Parent class method can be directly called.

print("**" * 50)

# Multiple Inheritance Example
class A:
    def method1(self):
        print("Method 1 of A")

    def xyz(self):
        print("Method xyz of A")

class B:
    def method3(self):
        print("Method 3 of B")

    def xyz(self):
        print("Method xyz of B")

# Explanation:
# Classes A and B both define methods. Class A defines `method1` and `xyz`, while class B defines `method3` and also overrides `xyz`.

# Class C inherits from both A and B
class C(A, B):
    def method5(self):
        print("Method 5 of C")

# Explanation:
# Class C is a subclass that inherits from both A and B, meaning it can access methods from both parent classes. It also adds a new method `method5`.

# Creating objects of A, B, and C
objA = A()
objA.method1()  # Calling method1 from A

objB = B()
objB.method3()  # Calling method3 from B

objC = C()
objC.method5()  # Calling method5 from C
objC.method3()  # Calling method3 from B (inherited)
objC.method1()  # Calling method1 from A (inherited)
objC.xyz()  # Calling xyz method from class B (last inherited)

# Explanation:
# Objects of A, B, and C are created. Class C can access methods from both A and B, and it also defines its own method `method5`.

print("--" * 50)

# Multilevel Inheritance Example
class A:
    def method1(self):
        print("Method 1 of A")

    def method2(self):
        print("Method 2 of A")

class B(A):
    def method3(self):
        print("Method 3 of B")

    def method4(self):
        print("Method 4 of B")

class C(B):
    def method5(self):
        print("Method 5 of C")

# Explanation:
# Class A is the base class with methods `method1` and `method2`.
# Class B inherits from A and adds `method3` and `method4`.
# Class C inherits from B and adds `method5`, demonstrating multilevel inheritance.

# Creating objects of A, B, and C
objA = A()
objA.method1()  # Calling method1 from A
objA.method2()  # Calling method2 from A

print("--" * 50)
objB = B()
objB.method1()  # Calling method1 from A (inherited by B)
objB.method2()  # Calling method2 from A (inherited by B)
objB.method3()  # Calling method3 from B
objB.method4()  # Calling method4 from B

print("--" * 50)
objC = C()
objC.method5()  # Calling method5 from C
objC.method4()  # Calling method4 from B (inherited by C)
objC.method3()  # Calling method3 from B (inherited by C)
objC.method2()  # Calling method2 from A (inherited by B and C)
objC.method1()  # Calling method1 from A (inherited by B and C)
