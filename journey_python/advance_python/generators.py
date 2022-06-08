def infinte_sequence():
    result = 1
    while True:
        yield result
        result *= 5


values = infinte_sequence()
for x in range(200):
    print(next(values))



# # Seq 1 to 9,000,000
# # x ** 3

# import sys



# def mygenerator(n):
#     for x in range(n):
#         yield x ** 3


# values = mygenerator(100)
# print(sys.getsizeof(values))


# for x in values:
#     print(x)

