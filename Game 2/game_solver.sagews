︠b06aa0bf-468c-4068-8a73-dc7f81d06708s︠
from graph import get_solution

layout = [1, 2, 3]

for i in layout:
    print(f"{i}\t", end="")

def get_input(box):
    num = -1

    while(num < 0 or num > 2):
        num = input(f"Enter the value for box #{box}: ")
    return num

num1 = get_input(1)
num2 = get_input(2)
num3 = get_input(3)

mat = f"[{num1}, {num2}, {num3}]"
sol = get_solution(mat)

for k in list(set(sol.split(" ")))[1:]:
    ele=k
    x=[i for i in sol.split(" ") if i==ele]
    print(f"press box #{ele} {len(x)} times")
︡9b1f7123-add3-42a9-91ff-c5b22e76c41d︡{"stdout":"1\t2\t3\t"}︡{"raw_input":{"prompt":"Enter the value for box #1: "}}︡{"delete_last":true}︡{"raw_input":{"prompt":"Enter the value for box #1: ","submitted":true,"value":"2"}}︡{"raw_input":{"prompt":"Enter the value for box #2: "}}︡{"delete_last":true}︡{"raw_input":{"prompt":"Enter the value for box #2: ","submitted":true,"value":"0"}}︡{"raw_input":{"prompt":"Enter the value for box #3: "}}︡{"delete_last":true}︡{"raw_input":{"prompt":"Enter the value for box #3: ","submitted":true,"value":"2"}}︡{"stdout":"press box #1 2 times\npress box #3 2 times\npress box #2 2 times\n"}︡{"done":true}









