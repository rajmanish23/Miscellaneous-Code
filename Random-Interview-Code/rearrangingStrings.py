def strCanRearrange(str1, str2) -> bool:
    dis1 = set(str1)
    dis2 = set(str2)
    return dis1 == dis2

inStr1 = input()
inStr2 = input()
if (strCanRearrange(inStr1, inStr2)):
    print("yes")
else:
    print("no")



    