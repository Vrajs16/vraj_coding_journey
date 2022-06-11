def printMenu():
    print("------------ MENU ------------")
    for i in range(0, len(foods)):
        if i + 1 < 10:
            print(f"| {i+1}.  {foods[i]}${prices[i]} |")
        else:
            print(f"| {i+1}. {foods[i]}${prices[i]} |")
    print("------------ MENU ------------\n")


def order():
    orders = []
    total = 0
    while True:
        orderNumber = str(input(f"What would you like to order? (Enter 1 - {len(foods)}; Enter 0 to finish): "))
        try:
            orderNumber = int(orderNumber)
            if orderNumber == 0:
                break
            elif orderNumber <= len(foods):
                print(f"You ordered {foods[orderNumber - 1].strip()} which costs ${prices[orderNumber - 1]}.\n")
                orders.append(foods[orderNumber - 1].strip())
                total += prices[orderNumber - 1]
            else:
                print("Invalid order number. Please try again.\n")
        except ValueError:
            print("Invalid order number. Please try again.\n")
    return round(total, 2), orders


menu = {
    "Pizza           ": 12.03,
    "Pasta            ": 4.99,
    "Salad            ": 3.34,
    "Water            ": 1.96,
    "Coke             ": 1.69,
    "Beer             ": 2.99,
    "Milk             ": 3.99,
    "Chips            ": 1.02,
    "Ice Cream        ": 1.99,
    "Sandwich        ": 10.93,
}

foods = list(menu.keys())
prices = list(menu.values())

print("  Welcome to Vraj's Kitchen!")
while True:
    printMenu()
    totalCost, foodOrdered = order()
    if len(foodOrdered) != 0:
        print("\nThank you for your order!")
        print(f"Your total is ${totalCost}.")
        print(f"You ordered: {foodOrdered}\n")
    else:
        print("No order placed.\n")

    orderAgain = str(input("Would you like to order again? (y/n): "))
    if orderAgain.lower() == "y":
        print()
        continue
    elif orderAgain.lower() == "n":
        print("Goodbye!")
        break
    else:
        print("Invalid input. Not Ordering Again.")
        print("Goodbye!")
        break
