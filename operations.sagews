︠5f4e0e84-33e3-48bd-97e3-ce2599a77af4s︠
def o(matA, matB):
    matA = list(matA)
    matB = list(matB)

    rows = len(matA)
    cols = len(matA[0])
    result = [[0]*cols for i in range(rows)]
    matA = [list(x) for x in matA]
    matB = [list(x) for x in matB]
    for i in range(0, len(matA)):
        for j in range(0, len(matA[0])):
            result[i][j] = matA[i][j]*matB[i][j]
    return matrix(result)

def cross(matA, matB):
    matA = list(matA)
    matA = [list(x) for x in matA]

    #rows = len(matA) * len(matB)
    #cols = len(matA[0]) * len(matB[0])
    result = []

    for i in range(0, len(matA)):
        for j in range(0, len(matA[0])):
            result.append(matA[i][j] * matB)

    result_list = []

    for i in range(0, len(matA)):
        mat = result[i*len(matA[0])]
        for j in range(1, len(matA[0])):
            mat = mat.augment(result[(i*len(matA[0]))+j])
        result_list.append(mat)

    final_matrix = result_list[0]

    for i in range(1,len(result_list)):
        final_matrix = final_matrix.stack(result_list[i])

    print(final_matrix)

def test_o():
    matA = matrix([[1,2,3],[4,5,6]])
    matB = matrix([[2,1,3],[8,7,5]])
    result = o(matA, matB)
    print(result)

def test_cross():
    matA = matrix([[1,2,3],[4,5,6]])
    matB = matrix([[2,1,3],[8,7,5]])
    cross(matA,matB)

test_o()
print()
test_cross()
︡bee0da63-3033-48c6-8e16-e4b51a408fb3︡{"stdout":"[ 2  2  9]\n[32 35 30]\n"}︡{"stdout":"\n"}︡{"stdout":"[ 2  1  3  4  2  6  6  3  9]\n[ 8  7  5 16 14 10 24 21 15]\n[ 8  4 12 10  5 15 12  6 18]\n[32 28 20 40 35 25 48 42 30]\n"}︡{"done":true}









