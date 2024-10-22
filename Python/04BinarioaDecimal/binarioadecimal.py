def bd(b):
    dec = 0
    for p, d in enumerate(reversed(b)):
        dec += int(d) * (2 ** p)
    return dec

nb = input("Ingrese un número binario: ")
r = bd(nb)
print("El numero  en decimal es:", r)

