︠60e828ee-84ea-4a2b-ab9a-ae219be7e0de︠
#get every state
import random
import math
import ast

#flip a switch
def flick_switch(switch, switches):
    if switch == 1:
        switches = switches + vector(Integers(3), [1, 1, 0])
    elif switch == 2:
        switches = switches + vector(Integers(3), [1, 1, 1])
    elif switch == 3:
        switches = switches + vector(Integers(3), [0, 1, 1])

    return switches


def create_file():
    items = [0,1,2]
    all_vectors = []
    goal = 3**3

    f = open("all_vector.txt", "w")

    while (len(all_vectors) != goal):
        num = len(all_vectors)
        num1 = random.choice(items)
        num2 = random.choice(items)
        num3 = random.choice(items)
        vector = [num1, num2, num3]
        if not (vector in all_vectors):
            print(f"Number: {num}, Goal: {goal}")
            all_vectors.append(vector)
            f.write(f"{vector}\n")

    print(f"Number: {goal}, Goal: {goal}")
    f.close()

def create_graph_file():
    f1 = open("all_vector.txt", "r")
    f2 = open("all_vector_nodes.txt", "w")

    goal = (3**3)*3
    num = 0
    for i in f1:
        vec = ast.literal_eval(i)
        for i in range(1,4):
            new_vec = list(flick_switch(i, vector(vec)))
            f2.write(f"{vec},{new_vec},{i}\n")
            num += 1
            print(f"finished {num}/{goal}")

    print("finish creating graph file")
    f2.close()

#create_file() - file is in folder, no need ro run again
#create_graph_file() - file is in folder, no need ro run again









