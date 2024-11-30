import pila
import vista



def main():

    logica_pila={
        "crear_pila" : pila.crear_pila,
        "apilar": pila.apilar,
        "desapilar": pila.desapilar,
        "cima" : pila.cima,
        "esta_vacia": pila.esta_vacia,
        "tamano" : pila.tamano,
        "mostrar_pila" : pila.mostrar_pila
    }


vista.crear_interfaz(logica_pila)

main()