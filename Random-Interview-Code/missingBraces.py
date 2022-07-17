def checkBraces(code) -> bool:
    openBraces = 0
    closeBraces = 0
    for i in code:
        if ('{' == i) :
            openBraces += 1
        elif ('}' == i) :
            closeBraces += 1
    return openBraces == closeBraces


inCode = input()
if (checkBraces(inCode)) :
    print('correct')
else :
    print('error')


    