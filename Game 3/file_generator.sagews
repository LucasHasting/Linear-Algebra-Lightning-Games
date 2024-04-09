︠60e828ee-84ea-4a2b-ab9a-ae219be7e0de︠
#get every state
import random
import math
import ast

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


def create_file():
    items = [0,1,2]
    all_matricies = []
    goal = 3**9

    f = open("all_matrix.txt", "w")

    while (len(all_matricies) != goal):
        num = len(all_matricies)
        num1 = random.choice(items)
        num2 = random.choice(items)
        num3 = random.choice(items)
        num4 = random.choice(items)
        num5 = random.choice(items)
        num6 = random.choice(items)
        num7 = random.choice(items)
        num8 = random.choice(items)
        num9 = random.choice(items)
        matrix = [[num1, num2, num3],
               [num4, num5, num6],
               [num7, num8, num9]]
        if not (matrix in all_matricies):
            if(num % 1000 == 0 or (num>19000 and num % 5 == 0)):
                print(f"Number: {num}, Goal: {goal}\n")
            all_matricies.append(matrix)
            f.write(f"{matrix}\n")

    #print(f"Number: {goal}, Goal: {goal}")
    print("finished creating matrix file")
    f.close()

def create_graph_file():
    f1 = open("all_matrix.txt", "r")
    f2 = open("all_matrix_nodes.txt", "w")

    goal = (3**9)*9
    num = 0
    for i in f1:
        mat = ast.literal_eval(i)
        for i in range(1,10):
            new_mat = list(flick_switch(i, matrix(mat)))
            new_mat = [list(x) for x in new_mat]
            f2.write(f"{mat},{new_mat},{i}\n")
            num += 1
            if(num % 1000 == 0):
                print(f"finished {num}/{goal}")

    print("finish creating graph file")
    f2.close()

#create_file() - file is in folder, no need ro run again
#create_graph_file() - file is in folder, no need ro run again
︡5eba3886-af01-479b-b491-83a47a9f340b︡{"stdout":"finished 1000/177147"}︡{"stdout":"\nfinished 2000/177147"}︡{"stdout":"\nfinished 3000/177147"}︡{"stdout":"\nfinished 4000/177147"}︡{"stdout":"\nfinished 5000/177147"}︡{"stdout":"\nfinished 6000/177147"}︡{"stdout":"\nfinished 7000/177147"}︡{"stdout":"\nfinished 8000/177147"}︡{"stdout":"\nfinished 9000/177147"}︡{"stdout":"\nfinished 10000/177147"}︡{"stdout":"\nfinished 11000/177147"}︡{"stdout":"\nfinished 12000/177147"}︡{"stdout":"\nfinished 13000/177147"}︡{"stdout":"\nfinished 14000/177147"}︡{"stdout":"\nfinished 15000/177147"}︡{"stdout":"\nfinished 16000/177147"}︡{"stdout":"\nfinished 17000/177147"}︡{"stdout":"\nfinished 18000/177147"}︡{"stdout":"\nfinished 19000/177147"}︡{"stdout":"\nfinished 20000/177147"}︡{"stdout":"\nfinished 21000/177147"}︡{"stdout":"\nfinished 22000/177147"}︡{"stdout":"\nfinished 23000/177147"}︡{"stdout":"\nfinished 24000/177147"}︡{"stdout":"\nfinished 25000/177147"}︡{"stdout":"\nfinished 26000/177147"}︡{"stdout":"\nfinished 27000/177147"}︡{"stdout":"\nfinished 28000/177147"}︡{"stdout":"\nfinished 29000/177147"}︡{"stdout":"\nfinished 30000/177147"}︡{"stdout":"\nfinished 31000/177147"}︡{"stdout":"\nfinished 32000/177147"}︡{"stdout":"\nfinished 33000/177147"}︡{"stdout":"\nfinished 34000/177147"}︡{"stdout":"\nfinished 35000/177147"}︡{"stdout":"\nfinished 36000/177147"}︡{"stdout":"\nfinished 37000/177147"}︡{"stdout":"\nfinished 38000/177147"}︡{"stdout":"\nfinished 39000/177147"}︡{"stdout":"\nfinished 40000/177147"}︡{"stdout":"\nfinished 41000/177147"}︡{"stdout":"\nfinished 42000/177147"}︡{"stdout":"\nfinished 43000/177147"}︡{"stdout":"\nfinished 44000/177147"}︡{"stdout":"\nfinished 45000/177147"}︡{"stdout":"\nfinished 46000/177147"}︡{"stdout":"\nfinished 47000/177147"}︡{"stdout":"\nfinished 48000/177147"}︡{"stdout":"\nfinished 49000/177147"}︡{"stdout":"\nfinished 50000/177147"}︡{"stdout":"\nfinished 51000/177147"}︡{"stdout":"\nfinished 52000/177147"}︡{"stdout":"\nfinished 53000/177147"}︡{"stdout":"\nfinished 54000/177147"}︡{"stdout":"\nfinished 55000/177147"}︡{"stdout":"\nfinished 56000/177147"}︡{"stdout":"\nfinished 57000/177147"}︡{"stdout":"\nfinished 58000/177147"}︡{"stdout":"\nfinished 59000/177147"}︡{"stdout":"\nfinished 60000/177147"}︡{"stdout":"\nfinished 61000/177147"}︡{"stdout":"\nfinished 62000/177147"}︡{"stdout":"\nfinished 63000/177147"}︡{"stdout":"\nfinished 64000/177147"}︡{"stdout":"\nfinished 65000/177147"}︡{"stdout":"\nfinished 66000/177147"}︡{"stdout":"\nfinished 67000/177147"}︡{"stdout":"\nfinished 68000/177147"}︡{"stdout":"\nfinished 69000/177147"}︡{"stdout":"\nfinished 70000/177147"}︡{"stdout":"\nfinished 71000/177147"}︡{"stdout":"\nfinished 72000/177147"}︡{"stdout":"\nfinished 73000/177147"}︡{"stdout":"\nfinished 74000/177147"}︡{"stdout":"\nfinished 75000/177147"}︡{"stdout":"\nfinished 76000/177147"}︡{"stdout":"\nfinished 77000/177147"}︡{"stdout":"\nfinished 78000/177147"}︡{"stdout":"\nfinished 79000/177147"}︡{"stdout":"\nfinished 80000/177147"}︡{"stdout":"\nfinished 81000/177147"}︡{"stdout":"\nfinished 82000/177147"}︡{"stdout":"\nfinished 83000/177147"}︡{"stdout":"\nfinished 84000/177147"}︡{"stdout":"\nfinished 85000/177147"}︡{"stdout":"\nfinished 86000/177147"}︡{"stdout":"\nfinished 87000/177147"}︡{"stdout":"\nfinished 88000/177147"}︡{"stdout":"\nfinished 89000/177147"}︡{"stdout":"\nfinished 90000/177147"}︡{"stdout":"\nfinished 91000/177147"}︡{"stdout":"\nfinished 92000/177147"}︡{"stdout":"\nfinished 93000/177147"}︡{"stdout":"\nfinished 94000/177147"}︡{"stdout":"\nfinished 95000/177147"}︡{"stdout":"\nfinished 96000/177147"}︡{"stdout":"\nfinished 97000/177147"}︡{"stdout":"\nfinished 98000/177147"}︡{"stdout":"\nfinished 99000/177147"}︡{"stdout":"\nfinished 100000/177147"}︡{"stdout":"\nfinished 101000/177147"}︡{"stdout":"\nfinished 102000/177147"}︡{"stdout":"\nfinished 103000/177147"}︡{"stdout":"\nfinished 104000/177147"}︡{"stdout":"\nfinished 105000/177147"}︡{"stdout":"\nfinished 106000/177147"}︡{"stdout":"\nfinished 107000/177147"}︡{"stdout":"\nfinished 108000/177147"}︡{"stdout":"\nfinished 109000/177147"}︡{"stdout":"\nfinished 110000/177147"}︡{"stdout":"\nfinished 111000/177147"}︡{"stdout":"\nfinished 112000/177147"}︡{"stdout":"\nfinished 113000/177147"}︡{"stdout":"\nfinished 114000/177147"}︡{"stdout":"\nfinished 115000/177147"}︡{"stdout":"\nfinished 116000/177147"}︡{"stdout":"\nfinished 117000/177147"}︡{"stdout":"\nfinished 118000/177147"}︡{"stdout":"\nfinished 119000/177147"}︡{"stdout":"\nfinished 120000/177147"}︡{"stdout":"\nfinished 121000/177147"}︡{"stdout":"\nfinished 122000/177147"}︡{"stdout":"\nfinished 123000/177147"}︡{"stdout":"\nfinished 124000/177147"}︡{"stdout":"\nfinished 125000/177147"}︡{"stdout":"\nfinished 126000/177147"}︡{"stdout":"\nfinished 127000/177147"}︡{"stdout":"\nfinished 128000/177147"}︡{"stdout":"\nfinished 129000/177147"}︡{"stdout":"\nfinished 130000/177147"}︡{"stdout":"\nfinished 131000/177147"}︡{"stdout":"\nfinished 132000/177147"}︡{"stdout":"\nfinished 133000/177147"}︡{"stdout":"\nfinished 134000/177147"}︡{"stdout":"\nfinished 135000/177147"}︡{"stdout":"\nfinished 136000/177147"}︡{"stdout":"\nfinished 137000/177147"}︡{"stdout":"\nfinished 138000/177147"}︡{"stdout":"\nfinished 139000/177147"}︡{"stdout":"\nfinished 140000/177147"}︡{"stdout":"\nfinished 141000/177147"}︡{"stdout":"\nfinished 142000/177147"}︡{"stdout":"\nfinished 143000/177147"}︡{"stdout":"\nfinished 144000/177147"}︡{"stdout":"\nfinished 145000/177147"}︡{"stdout":"\nfinished 146000/177147"}︡{"stdout":"\nfinished 147000/177147"}︡{"stdout":"\nfinished 148000/177147"}︡{"stdout":"\nfinished 149000/177147"}︡{"stdout":"\nfinished 150000/177147"}︡{"stdout":"\nfinished 151000/177147"}︡{"stdout":"\nfinished 152000/177147"}︡{"stdout":"\nfinished 153000/177147"}︡{"stdout":"\nfinished 154000/177147"}︡{"stdout":"\nfinished 155000/177147"}︡{"stdout":"\nfinished 156000/177147"}︡{"stdout":"\nfinished 157000/177147"}︡{"stdout":"\nfinished 158000/177147"}︡{"stdout":"\nfinished 159000/177147"}︡{"stdout":"\nfinished 160000/177147"}︡{"stdout":"\nfinished 161000/177147"}︡{"stdout":"\nfinished 162000/177147"}︡{"stdout":"\nfinished 163000/177147"}︡{"stdout":"\nfinished 164000/177147"}︡{"stdout":"\nfinished 165000/177147"}︡{"stdout":"\nfinished 166000/177147"}︡{"stdout":"\nfinished 167000/177147"}︡{"stdout":"\nfinished 168000/177147"}︡{"stdout":"\nfinished 169000/177147"}︡{"stdout":"\nfinished 170000/177147"}︡{"stdout":"\nfinished 171000/177147"}︡{"stdout":"\nfinished 172000/177147"}︡{"stdout":"\nfinished 173000/177147"}︡{"stdout":"\nfinished 174000/177147"}︡{"stdout":"\nfinished 175000/177147"}︡{"stdout":"\nfinished 176000/177147"}︡{"stdout":"\nfinished 177000/177147"}︡{"stdout":"\nfinish creating graph file\n"}︡{"done":true}









