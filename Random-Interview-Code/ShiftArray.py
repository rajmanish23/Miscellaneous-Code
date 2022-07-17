def shiftArray(arrLen, arr, shiftPos) -> None:
    for i in range(0, shiftPos) :
        for j in range(0,arrLen-1) :
            temp = arr[j]
            arr[j] = arr[j+1]
            arr[j+1] = temp
    print(arr)


shiftArray(6, [4,6,3,5,7,8], 2)


