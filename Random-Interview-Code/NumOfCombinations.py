def factorial(num) -> int:
    result = 1
    for i in range(1,num+1):
        result *= i
    return result

def numOfCombos(items, maxItems) -> int:
    numOfCombos = 0
    if (maxItemsInSet != numOfItems):
        numOfCombos = items
    if (maxItemsInSet > 1): 
        numOfCombos += (
            factorial(items) /
            (factorial(maxItems) * factorial(items - maxItems))
        )
    return int(numOfCombos)

numOfItems = int(input())
maxItemsInSet = int(input())
print(numOfCombos(numOfItems, maxItemsInSet))

