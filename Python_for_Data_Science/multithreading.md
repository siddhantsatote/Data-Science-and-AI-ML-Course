Here's an explanation of the code and a more interactive and understandable version of the Python script using threading. I'll provide it as a `.py` file.

### `threading_example.py`

```python
# ================================================
# Threading Example in Python
# ================================================
from threading import current_thread, Thread
from time import sleep

# ================================================
# Function demo1: Simulates a thread that runs a task with a delay
# ================================================
def demo1():
    # Print the name of the current thread (user-defined)
    print("Inside demo 1", current_thread().name)
    # Loop to simulate work with a sleep delay
    for i in range(5):
        print("Demo1 : i :", i)
        sleep(1)  # Simulate work by sleeping for 1 second

# Create the first thread, named "User Thread 1", which will execute demo1
thread1 = Thread(target=demo1, name="User Thread 1")

# ================================================
# Function demo2: Another thread that performs similar tasks with a different delay
# ================================================
def demo2():
    # Print the name of the current thread (user-defined)
    print("Inside demo 2", current_thread().name)
    # Loop to simulate work with a sleep delay
    for j in range(5):
        print("Demo2 : j :", j)
        sleep(2)  # Simulate work by sleeping for 2 seconds

# Create the second thread, named "User Thread 2", which will execute demo2
thread2 = Thread(target=demo2, name="User Thread 2")

# ================================================
# Daemon thread: A thread that runs in the background, doesn't block program exit
# ================================================
def daemon_thread():
    # Daemon threads are typically used for background tasks
    for k in range(100):
        print("Daemon k :", k)
        sleep(1)  # Daemon thread runs in the background and prints numbers every second

# Create the daemon thread, which will execute daemon_thread
# Daemon thread runs in the background and doesn't block the main program from exiting
d_thread = Thread(target=daemon_thread, daemon=True)

# Start all threads
thread1.start()  # Start thread1 (User Thread 1)
thread2.start()  # Start thread2 (User Thread 2)
d_thread.start()  # Start the daemon thread

# Main thread continues execution independently of the created threads
print("Outside both the functions", current_thread().name)

 class MyThread(Thread):
     def __init__(self, thread_name, iteration, delay):
         super().__init__()
         self.name = thread_name
         self.iter = iteration
         self.delay = delay

     def run(self):
         print(f"Inside {self.name} thread")
         for i in range(self.iter):
             print("i =", i)
             sleep(self.delay)
         print(f"Thread {self.name} completed")

# # Create custom thread objects
usr_th1 = MyThread("MyThread obj-1", 5, 2)  # Custom thread 1
usr_th2 = MyThread("MyThread obj-2", 10, 1)  # Custom thread 2

# # Start the custom threads
usr_th1.start()
usr_th2.start()
```

### **Explanation:**

#### 1. **Threading Basics:**
   - Python's `threading` module allows you to run multiple threads (tasks) simultaneously. Threads are independent of each other but share the same memory space.
   - Each thread can execute a function in parallel to others.

#### 2. **Creating Threads:**
   - **`Thread(target=function_name)`**: This is how you create a new thread in Python. The `target` argument defines the function that the thread will run.
   - **`name`**: You can give a thread a specific name (like `"User Thread 1"`) for identification purposes.

#### 3. **`current_thread().name`:**
   - This function is used to print the name of the current thread, whether it's the main thread or any of the user-created threads.

#### 4. **Thread `demo1`:**
   - This function prints numbers from `0` to `4` with a 1-second delay between each print. This simulates a task that a thread performs.

#### 5. **Thread `demo2`:**
   - Similar to `demo1`, this function prints numbers from `0` to `4` but with a 2-second delay between each print. Each thread runs independently of others, so both `demo1` and `demo2` will run in parallel.

#### 6. **Daemon Threads:**
   - **Daemon threads** are threads that run in the background and do not block the program from exiting. If only daemon threads are running, the program will exit even if the daemon threads are still active.
   - In this case, the `daemon_thread` function prints the numbers from `0` to `99` with a 1-second delay in the background.

#### 7. **Main Thread:**
   - The main thread (which is the program's entry point) will continue its execution while the user threads and daemon threads run in parallel.

#### 8. **Custom Thread Class (`MyThread`):**
   - You can create a custom class that inherits from the `Thread` class. This allows more control over the thread behavior, like customizing the `run()` method, which will execute when the thread starts.
   - In this example, you can see how to create custom threads with specific iterations and delays.
