def crear_pila():
    return[]

def apilar(pila, elemento):
    pila.append(elemento)

def esta_vacia(pila):
    return len(pila)==0


def desapilar(pila):
    if esta_vacia(pila):
        raise IndexError("Error no se puede desapilar, la pila esta vacia")
    return pila.pop()

def cima(pila):
    if esta_vacia(pila):
        raise IndexError("Error no se puede desapilar, la pila esta vacia")
    return pila[-1]

def tamano(pila):
    return len(pila)

def mostrar_pila(pila):
        if esta_vacia(pila):
         raise IndexError("Error no se puede desapilar, la pila esta vacia")
        return f"Pila actual:, {pila}"

def actualizar_pila():
    pila_actual