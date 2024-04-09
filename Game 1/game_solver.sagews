︠b06aa0bf-468c-4068-8a73-dc7f81d06708s︠
from graph import get_solution

layout = [1, 2, 3, 4, 5]

for i in layout:
    print(f"{i}\t", end="")

def get_input(box):
    num = -1

    while(num < 0 or num > 1):
        num = input(f"Enter the value for box #{box}: ")
    return num

num1 = get_input(1)
num2 = get_input(2)
num3 = get_input(3)
num4 = get_input(4)
num5 = get_input(5)

vec = f"[{num1}, {num2}, {num3}, {num4}, {num5}]"
sol = get_solution(vec)
print(vec)
if not sol == "Can not be solved":
    for k in list(set(sol.split(" ")))[1:]:
        ele=k
        x=[i for i in sol.split(" ") if i==ele]
        print(f"press box #{ele} {len(x)} times")
else:
    print(sol)        
︡e9852b31-116f-4d00-9b6c-2c57b9e3018e︡{"stdout":"1\t2\t3\t4\t5\t"}︡{"raw_input":{"prompt":"Enter the value for box #1: "}}︡{"delete_last":true}︡{"raw_input":{"prompt":"Enter the value for box #1: ","submitted":true,"value":"1"}}︡{"raw_input":{"prompt":"Enter the value for box #2: "}}︡{"delete_last":true}︡{"raw_input":{"prompt":"Enter the value for box #2: ","submitted":true,"value":"1"}}︡{"raw_input":{"prompt":"Enter the value for box #3: "}}︡{"delete_last":true}︡{"raw_input":{"prompt":"Enter the value for box #3: ","submitted":true,"value":"1"}}︡{"raw_input":{"prompt":"Enter the value for box #4: "}}︡{"delete_last":true}︡{"raw_input":{"prompt":"Enter the value for box #4: ","submitted":true,"value":"0"}}︡{"raw_input":{"prompt":"Enter the value for box #5: "}}︡{"delete_last":true}︡{"raw_input":{"prompt":"Enter the value for box #5: ","submitted":true,"value":"1"}}︡{"stdout":"[1, 1, 1, 0, 1]\n"}︡{"stdout":"Can not be solved\n"}︡{"done":true}









