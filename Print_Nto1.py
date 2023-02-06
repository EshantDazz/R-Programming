def printNto1(n):
    if n==0:
        return
    print(n)
    printNto1(n-1)

printNto1(4)