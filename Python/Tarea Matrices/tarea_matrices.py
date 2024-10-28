def ingresar_matriz():
    dimension = 0
    while dimension != 3 and dimension != 5:
        dimension = int(input("Ingrese la dimensión de la matriz (3 o 5): "))
        if dimension != 3 and dimension != 5:
            print("Solo se permiten matrices de 3x3 o 5x5")
    
    matriz = []
    print(f"Introduce los valores de la matriz de {dimension}x{dimension}")
    for i in range(dimension):
        fila = []
        for j in range(dimension):
            valor = float(input(f"Elemento [{i+1}][{j+1}]: "))
            fila.append(valor)
        matriz.append(fila)
    return matriz

def transponer_matriz(matriz):
    dimension = len(matriz)
    matriz_transpuesta = []
    for i in range(dimension):
        fila = []
        for j in range(dimension):
            fila.append(matriz[j][i])
        matriz_transpuesta.append(fila)
    return matriz_transpuesta

def imprimir_matriz(matriz):
    for fila in matriz:
        print(fila)

matriz_original = ingresar_matriz()

print("\nMatriz Original:")
imprimir_matriz(matriz_original)

matriz_transpuesta = transponer_matriz(matriz_original)
print("\nMatriz Transpuesta:")
imprimir_matriz(matriz_transpuesta)