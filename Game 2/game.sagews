︠60a00e25-23d3-4d93-b425-d8bb16a457d1s︠
import random

#list of states
mod2 = range(0,3)

#select random states
A = random.choice(mod2)
B = random.choice(mod2)
C = random.choice(mod2)

#map for states
states = {
    0: "off",
    1: "red",
    2: "green"
}

#initial configuration
switches = vector(Integers(3), [A, B, C])

#flip a switch
def flick_switch(switch, switches):
    if switch == 1:
        switches = switches + vector(Integers(3), [1, 1, 0])
    elif switch == 2:
        switches = switches + vector(Integers(3), [1, 1, 1])
    elif switch == 3:
        switches = switches + vector(Integers(3), [0, 1, 1])

    return switches

def validation(val):
    while val < 0 or val > 3:
        print("invalid input, please try again")
        val = int(input("Enter a Switch to flick (1-3, 0 to quit): "))
    return val

#declare val for the while
val = 1
while(val != 0):
    #display config
    print("Current Configuration: ")
    index = 1
    for i in switches:
        print(f"{index}:{states[i]}\t", end="")
        index += 1
    print()

    #get input from user
    val = int(input("Enter a Switch to flick (1-3, 0 to quit): "))
    val = validation(val)
    switches = flick_switch(val, switches)
︡802c88e1-0f50-47ee-a234-4ef2192c51e4︡{"stdout":"Current Configuration: \n1:green\t2:off\t3:green\t\n"}︡{"raw_input":{"prompt":"Enter a Switch to flick (1-3, 0 to quit): "}}︡{"delete_last":true}︡{"raw_input":{"prompt":"Enter a Switch to flick (1-3, 0 to quit): ","submitted":true,"value":"1"}}︡{"stdout":"Current Configuration: "}︡{"stdout":"\n1:off\t2:red\t3:green\t\n"}︡{"raw_input":{"prompt":"Enter a Switch to flick (1-3, 0 to quit): "}}︡{"delete_last":true}︡{"raw_input":{"prompt":"Enter a Switch to flick (1-3, 0 to quit): ","submitted":true,"value":"1"}}︡{"stdout":"Current Configuration: "}︡{"stdout":"\n1:red\t2:green\t3:green\t\n"}︡{"raw_input":{"prompt":"Enter a Switch to flick (1-3, 0 to quit): "}}︡{"delete_last":true}︡{"raw_input":{"prompt":"Enter a Switch to flick (1-3, 0 to quit): ","submitted":true,"value":"3"}}︡{"stdout":"Current Configuration: "}︡{"stdout":"\n1:red\t2:off\t3:off\t\n"}︡{"raw_input":{"prompt":"Enter a Switch to flick (1-3, 0 to quit): "}}︡{"delete_last":true}︡{"raw_input":{"prompt":"Enter a Switch to flick (1-3, 0 to quit): ","submitted":true,"value":"3"}}︡{"stdout":"Current Configuration: "}︡{"stdout":"\n1:red\t2:red\t3:red\t\n"}︡{"raw_input":{"prompt":"Enter a Switch to flick (1-3, 0 to quit): "}}︡{"delete_last":true}︡{"raw_input":{"prompt":"Enter a Switch to flick (1-3, 0 to quit): ","submitted":true,"value":"2"}}︡{"stdout":"Current Configuration: "}︡{"stdout":"\n1:green\t2:green\t3:green\t\n"}︡{"raw_input":{"prompt":"Enter a Switch to flick (1-3, 0 to quit): "}}︡{"delete_last":true}︡{"raw_input":{"prompt":"Enter a Switch to flick (1-3, 0 to quit): ","submitted":true,"value":"2"}}︡{"stdout":"Current Configuration: "}︡{"stdout":"\n1:off\t2:off\t3:off\t\n"}︡{"raw_input":{"prompt":"Enter a Switch to flick (1-3, 0 to quit): "}}︡{"delete_last":true}︡{"raw_input":{"prompt":"Enter a Switch to flick (1-3, 0 to quit): ","submitted":true,"value":"0"}}︡{"done":true}









