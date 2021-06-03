#this is a different commit

#new line!
#here is an edit

def fizzbuzz(num:int=15):
    for ii in range(num):
        i = ii+1
        if i % 15 == 0:
            print("FizzBuzz")
        elif i % 3 == 0:
            print("Fizz")
        elif i % 5 == 0:
            print("Buzz")
        else:
            print(i)
    pass

fizzbuzz(16)
fizzbuzz()

arr = ["a"]*5
for mystr in arr:
    mystr += "2"
    print(mystr)

print(arr)
