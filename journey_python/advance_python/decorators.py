# Practical Example #2: Timing
import time

def timed(function):
    def wrapper(*args, **kwargs):
        before = time.time()
        result = function(*args, **kwargs)
        after = time.time()
        fname = function.__name__
        print(f"{fname} took {after - before} seconds to execute!")
        return result
    return wrapper

@timed
def myfunction(x):
    result = 1
    for i in range(1,x):
        result *= i
    return result
myfunction(100000)


# # Practical Example #1: Logging

# def logged(function):
#     def wrapper(*args, **kwargs):
#         value = function(*args, **kwargs)
#         with open('log.txt', 'a') as log:
#             fname = function.__name__
#             print(f'{fname} returned value {value}')
#             log.write(f'{fname} returned value {value}\n')
#         return value
    
#     return wrapper
            


# @logged
# def add(x,y):
#     return x + y


# print(add(10,20))

# def mydecorator(function):
#     def wrapper(*args, **kwargs):
#         return_value = function(*args, **kwargs)
#         print("I am decorating your function")
#         return return_value
    
#     return wrapper

# @mydecorator
# def hello(person):
#     return f"Hello {person}!"


# print(hello('Vraj'))