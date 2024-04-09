︠1cf910a6-2b34-454b-bbdf-e3abff7afbe7s︠
import random

#list of states
mod2 = range(0,3)

#select random states
A = random.choice(mod2)
B = random.choice(mod2)
C = random.choice(mod2)
D = random.choice(mod2)
E = random.choice(mod2)
F = random.choice(mod2)
G = random.choice(mod2)
H = random.choice(mod2)
I = random.choice(mod2)

#map for states
states = {
    0: "off",
    1: "red",
    2: "green"
}

#initial configuration
switches = Matrix(Integers(3), [[A, B, C],[D, E, F],[G, H, I]])

#flip a switch
def flick_switch(switch, switches):
    if switch == 1:
        switches = switches + Matrix(Integers(3), [[1, 1, 0],[1, 1, 0],[0, 0, 0]])
    elif switch == 2:
        switches = switches + Matrix(Integers(3), [[1, 1, 1],[0, 0, 0],[0, 0, 0]])
    elif switch == 3:
        switches = switches + Matrix(Integers(3), [[0, 1, 1],[0, 1, 1],[0, 0, 0]])
    elif switch == 4:
        switches = switches + Matrix(Integers(3), [[1, 0, 0],[1, 0, 0],[1, 0, 0]])
    elif switch == 5:
        switches = switches + Matrix(Integers(3), [[0, 1, 0],[1, 1, 1],[0, 1, 0]])
    elif switch == 6:
        switches = switches + Matrix(Integers(3), [[0, 0, 1],[0, 0, 1],[0, 0, 1]])
    elif switch == 7:
        switches = switches + Matrix(Integers(3), [[0, 0, 0],[1, 1, 0],[1, 1, 0]])
    elif switch == 8:
        switches = switches + Matrix(Integers(3), [[0, 0, 0],[0, 0, 0],[1, 1, 1]])
    elif switch == 9:
        switches = switches + Matrix(Integers(3), [[0, 0, 0],[0, 1, 1],[0, 1, 1]])
    return switches

def validation(val):
    while val < 0 or val > 9:
        print("invalid input, please try again")
        val = int(input("Enter a Switch to flick (1-9, 0 to quit): "))
    return val

#declare val for the while
val = 1
while(val != 0):
    #display config
    print("Current Configuration: ")
    index = 1
    for i in switches:
        for j in i:
            print(f"{index}:{states[j]}\t", end="")
            index += 1
        print()

    #get input from user
    val = int(input("Enter a Switch to flick (1-9, 0 to quit): "))
    val = validation(val)
    switches = flick_switch(val, switches)
︡2f78aa5b-474b-456a-a4b3-71505f79b00f︡{"stdout":"Current Configuration: \n1:off\t2:green\t3:red\t\n4:off\t5:green\t6:red\t\n7:green\t8:green\t9:red\t\n"}︡{"raw_input":{"prompt":"Enter a Switch to flick (1-9, 0 to quit): "}}︡{"delete_last":true}︡{"raw_input":{"prompt":"Enter a Switch to flick (1-9, 0 to quit): ","submitted":true,"value":"8"}}︡{"stdout":"Current Configuration: "}︡{"stdout":"\n1:off\t2:green\t3:red\t\n4:off\t5:green\t6:red\t\n7:off\t8:off\t9:green\t\n"}︡{"raw_input":{"prompt":"Enter a Switch to flick (1-9, 0 to quit): "}}︡{"delete_last":true}︡{"raw_input":{"prompt":"Enter a Switch to flick (1-9, 0 to quit): ","submitted":true,"value":"3"}}︡{"stdout":"Current Configuration: "}︡{"stdout":"\n1:off\t2:off\t3:green\t\n4:off\t5:off\t6:green\t\n7:off\t8:off\t9:green\t\n"}︡{"raw_input":{"prompt":"Enter a Switch to flick (1-9, 0 to quit): "}}︡{"delete_last":true}︡{"raw_input":{"prompt":"Enter a Switch to flick (1-9, 0 to quit): ","submitted":true,"value":"6"}}︡{"stdout":"Current Configuration: "}︡{"stdout":"\n1:off\t2:off\t3:off\t\n4:off\t5:off\t6:off\t\n7:off\t8:off\t9:off\t\n"}︡{"raw_input":{"prompt":"Enter a Switch to flick (1-9, 0 to quit): "}}︡{"delete_last":true}︡{"raw_input":{"prompt":"Enter a Switch to flick (1-9, 0 to quit): ","submitted":true,"value":"0"}}︡{"done":true}









