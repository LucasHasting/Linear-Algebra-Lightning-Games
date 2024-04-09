︠e9684ca1-66a2-4836-b621-965007613069︠
import random
import math
import ast

#flip a switch
def flick_switch(switch, switches):
    if switch == 1:
        switches = switches + vector(Integers(2), [1, 1, 0, 0, 0])
    elif switch == 5:
        switches = switches + vector(Integers(2), [0, 0, 0, 1, 1])
    else:
        vect = vector(Integers(2), [0, 0, 0, 0, 0])
        vect[switch-2] = 1
        vect[switch-1] = 1
        vect[switch] = 1
        switches = switches + vect
    return switches

def create_file():
    items = [0,1]
    all_vectors = []
    goal = 2**5

    f = open("all_vector.txt", "w")

    while (len(all_vectors) != goal):
        num = len(all_vectors)
        num1 = random.choice(items)
        num2 = random.choice(items)
        num3 = random.choice(items)
        num4 = random.choice(items)
        num5 = random.choice(items)
        vector = [num1, num2, num3, num4, num5]
        if not (vector in all_vectors):
            print(f"Number: {num}, Goal: {goal}")
            all_vectors.append(vector)
            f.write(f"{vector}\n")

    print(f"Number: {goal}, Goal: {goal}")
    f.close()

def create_graph_file():
    f1 = open("all_vector.txt", "r")
    f2 = open("all_vector_nodes.txt", "w")

    goal = (2**5)*5
    num = 0
    for i in f1:
        vec = ast.literal_eval(i)
        for i in range(1,6):
            new_vec = list(flick_switch(i, vector(vec)))
            f2.write(f"{vec},{new_vec},{i}\n")
            num += 1
            print(f"finished {num}/{goal}")

    print("finish creating graph file")
    f2.close()

#create_file() - file is in folder, no need ro run again
#create_graph_file() - file is in folder, no need ro run again
︡40401477-ac72-471e-aa48-d58892d09268︡{"stdout":"Number: 0, Goal: 32\nNumber: 1, Goal: 32\nNumber: 2, Goal: 32\nNumber: 3, Goal: 32\nNumber: 4, Goal: 32\nNumber: 5, Goal: 32\nNumber: 6, Goal: 32\nNumber: 7, Goal: 32\nNumber: 8, Goal: 32\nNumber: 9, Goal: 32\nNumber: 10, Goal: 32\nNumber: 11, Goal: 32\nNumber: 12, Goal: 32\nNumber: 13, Goal: 32\nNumber: 14, Goal: 32\nNumber: 15, Goal: 32\nNumber: 16, Goal: 32\nNumber: 17, Goal: 32\nNumber: 18, Goal: 32\nNumber: 19, Goal: 32\nNumber: 20, Goal: 32\nNumber: 21, Goal: 32\nNumber: 22, Goal: 32\nNumber: 23, Goal: 32\nNumber: 24, Goal: 32\nNumber: 25, Goal: 32\nNumber: 26, Goal: 32\nNumber: 27, Goal: 32\nNumber: 28, Goal: 32\nNumber: 29, Goal: 32\nNumber: 30, Goal: 32\nNumber: 31, Goal: 32\nNumber: 32, Goal: 32\n"}︡{"stdout":"finished 1/160\nfinished 2/160\nfinished 3/160\nfinished 4/160\nfinished 5/160\nfinished 6/160\nfinished 7/160\nfinished 8/160\nfinished 9/160\nfinished 10/160\nfinished 11/160\nfinished 12/160\nfinished 13/160\nfinished 14/160\nfinished 15/160\nfinished 16/160\nfinished 17/160\nfinished 18/160\nfinished 19/160\nfinished 20/160\nfinished 21/160\nfinished 22/160\nfinished 23/160\nfinished 24/160\nfinished 25/160\nfinished 26/160\nfinished 27/160\nfinished 28/160\nfinished 29/160\nfinished 30/160\nfinished 31/160\nfinished 32/160\nfinished 33/160\nfinished 34/160\nfinished 35/160\nfinished 36/160\nfinished 37/160\nfinished 38/160\nfinished 39/160\nfinished 40/160\nfinished 41/160\nfinished 42/160\nfinished 43/160\nfinished 44/160\nfinished 45/160\nfinished 46/160\nfinished 47/160\nfinished 48/160\nfinished 49/160\nfinished 50/160\nfinished 51/160\nfinished 52/160\nfinished 53/160\nfinished 54/160\nfinished 55/160\nfinished 56/160\nfinished 57/160\nfinished 58/160\nfinished 59/160\nfinished 60/160\nfinished 61/160\nfinished 62/160\nfinished 63/160\nfinished 64/160\nfinished 65/160\nfinished 66/160\nfinished 67/160\nfinished 68/160\nfinished 69/160\nfinished 70/160\nfinished 71/160\nfinished 72/160\nfinished 73/160\nfinished 74/160\nfinished 75/160\nfinished 76/160\nfinished 77/160\nfinished 78/160\nfinished 79/160\nfinished 80/160\nfinished 81/160\nfinished 82/160\nfinished 83/160\nfinished 84/160\nfinished 85/160\nfinished 86/160\nfinished 87/160\nfinished 88/160\nfinished 89/160\nfinished 90/160\nfinished 91/160\nfinished 92/160\nfinished 93/160\nfinished 94/160\nfinished 95/160\nfinished 96/160\nfinished 97/160\nfinished 98/160\nfinished 99/160\nfinished 100/160\nfinished 101/160\nfinished 102/160\nfinished 103/160\nfinished 104/160\nfinished 105/160\nfinished 106/160\nfinished 107/160\nfinished 108/160\nfinished 109/160\nfinished 110/160\nfinished 111/160\nfinished 112/160\nfinished 113/160\nfinished 114/160\nfinished 115/160\nfinished 116/160\nfinished 117/160\nfinished 118/160\nfinished 119/160\nfinished 120/160\nfinished 121/160\nfinished 122/160\nfinished 123/160\nfinished 124/160\nfinished 125/160\nfinished 126/160\nfinished 127/160\nfinished 128/160\nfinished 129/160\nfinished 130/160\nfinished 131/160\nfinished 132/160\nfinished 133/160\nfinished 134/160\nfinished 135/160\nfinished 136/160\nfinished 137/160\nfinished 138/160\nfinished 139/160\nfinished 140/160\nfinished 141/160\nfinished 142/160\nfinished 143/160\nfinished 144/160\nfinished 145/160\nfinished 146/160\nfinished 147/160\nfinished 148/160\nfinished 149/160\nfinished 150/160\nfinished 151/160\nfinished 152/160\nfinished 153/160\nfinished 154/160\nfinished 155/160\nfinished 156/160\nfinished 157/160\nfinished 158/160\nfinished 159/160\nfinished 160/160\nfinish creating graph file\n"}︡{"done":true}









