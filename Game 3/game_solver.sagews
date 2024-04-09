︠b06aa0bf-468c-4068-8a73-dc7f81d06708s︠
from graph import get_solution

layout = [[1, 2, 3],[4, 5, 6],[7, 8, 9]]


for i in layout:
        for j in i:
            print(f"{j}\t", end="")
        print()

def get_input(box):
    num = -1

    while(num < 0 or num > 2):
        num = input(f"Enter the value for box #{box}: ")
    return num

num1 = get_input(1)
num2 = get_input(2)
num3 = get_input(3)
num4 = get_input(4)
num5 = get_input(5)
num6 = get_input(6)
num7 = get_input(7)
num8 = get_input(8)
num9 = get_input(9)

mat = f"[[{num1}, {num2}, {num3}], [{num4}, {num5}, {num6}], [{num7}, {num8}, {num9}]]"
sol = get_solution(mat)

for k in list(set(sol.split(" ")))[1:]:
    ele=k
    x=[i for i in sol.split(" ") if i==ele]
    print(f"press box #{ele} {len(x)} times")

︡aef7ce45-7ea0-4ad5-976a-9c45d5b8419c︡{"stdout":"1\t2\t3\t\n4\t5\t6\t\n7\t8\t9\t\n"}︡{"raw_input":{"prompt":"Enter the value for box #1: "}}︡{"delete_last":true}︡{"raw_input":{"prompt":"Enter the value for box #1: ","submitted":true,"value":"0"}}︡{"raw_input":{"prompt":"Enter the value for box #2: "}}︡{"delete_last":true}︡{"raw_input":{"prompt":"Enter the value for box #2: ","submitted":true,"value":"2"}}︡{"raw_input":{"prompt":"Enter the value for box #3: "}}︡{"delete_last":true}︡{"raw_input":{"prompt":"Enter the value for box #3: ","submitted":true,"value":"1"}}︡{"raw_input":{"prompt":"Enter the value for box #4: "}}︡{"delete_last":true}︡{"raw_input":{"prompt":"Enter the value for box #4: ","submitted":true,"value":"0"}}︡{"raw_input":{"prompt":"Enter the value for box #5: "}}︡{"delete_last":true}︡{"raw_input":{"prompt":"Enter the value for box #5: ","submitted":true,"value":"2"}}︡{"raw_input":{"prompt":"Enter the value for box #6: "}}︡{"delete_last":true}︡{"raw_input":{"prompt":"Enter the value for box #6: ","submitted":true,"value":"1"}}︡{"raw_input":{"prompt":"Enter the value for box #7: "}}︡{"delete_last":true}︡{"raw_input":{"prompt":"Enter the value for box #7: ","submitted":true,"value":"2"}}︡{"raw_input":{"prompt":"Enter the value for box #8: "}}︡{"delete_last":true}︡{"raw_input":{"prompt":"Enter the value for box #8: ","submitted":true,"value":"2"}}︡{"raw_input":{"prompt":"Enter the value for box #9: "}}︡{"delete_last":true}︡{"raw_input":{"prompt":"Enter the value for box #9: ","submitted":true,"value":"1"}}︡{"stdout":"press box #8 1 times\npress box #3 1 times\npress box #6 1 times\n"}︡{"done":true}









