def ConvertirDecimal(NumeroBinario):
    d = 0
    l = len(NumeroBinario)
    
    # Recorrer cada dígito del número binario
    for i in range(l):
        # Convertir el dígito en entero y multiplicar por 2^(posición)
        d += int(NumeroBinario[i]) * (2 ** (l - i - 1))
    
    return d

NumeroBinario = input("Introduce un numero binario: ")
d = ConvertirDecimal(NumeroBinario) 
print("El número en decimal es:", d)