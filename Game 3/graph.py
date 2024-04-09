import networkx as nx

def check_all_configurations():
    flag = True
    order = ""
    f = open("all_matrix_nodes.txt", "r")
    results = open("results.txt", "w")
    graph_dict = {}
    graph = nx.DiGraph()
    for i in f:
        matrix_1 = i[:33]
        matrix_2 = i[34:67]
        path = i[68]
        graph.add_edge(matrix_1, matrix_2)
        if matrix_1 in graph_dict.keys():
            graph_dict[matrix_1][0].append(matrix_2)
            graph_dict[matrix_1][1].append(path)
        else:
            graph_dict[matrix_1] = [[matrix_2], [path]]

    #test if every initial configuration is possible
    j = 0
    for i in open("all_matrix.txt", "r"):
        j += 1
        i = i[0:len(i)-1]
        try:
            if(j % 1000 == 0):
                print(f"#{j}: {i}")
            path = nx.dijkstra_path(graph, i, "[[0, 0, 0], [0, 0, 0], [0, 0, 0]]")
            for k in range(0, len(path)-1):
                order += graph_dict[path[k]][1][graph_dict[path[k]][0].index(path[k+1])] + " "
            results.write(f"#{j}: {i} = {order}\n")
            order = ""
        except:
            print(f"#{j}: {i} is not a possible solution")
            results.wrtie(f"#{j}: {i} is not a possible solution\n")
            flag = False

    if not flag:
        print("All configurations can be won")
        results.write("All configurations can be won")
    else:
        print("All configurations can not be won")
        results.write("All configurations can not be won")

    results.close()
    f.close()

def get_solution(config):
    order = ""
    f = open("all_matrix_nodes.txt", "r")
    graph_dict = {}
    graph = nx.DiGraph()
    for i in f:
        matrix_1 = i[:33]
        matrix_2 = i[34:67]
        path = i[68]
        graph.add_edge(matrix_1, matrix_2)
        if matrix_1 in graph_dict.keys():
            graph_dict[matrix_1][0].append(matrix_2)
            graph_dict[matrix_1][1].append(path)
        else:
            graph_dict[matrix_1] = [[matrix_2], [path]]

    path = nx.dijkstra_path(graph, config, "[[0, 0, 0], [0, 0, 0], [0, 0, 0]]")
    for k in range(0, len(path)-1):
        order += graph_dict[path[k]][1][graph_dict[path[k]][0].index(path[k+1])] + " "

    f.close()
    return order

#check_all_configurations() file exists in folder, no need to run again
print(get_solution("[[1, 0, 2], [0, 1, 0], [1, 0, 0]]"))









