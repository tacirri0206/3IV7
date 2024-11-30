import tkinter as tk
from tkinter import messagebox



def crear_interfaz(logica_pila):
    ventana = tk.Tk()
    ventana.title("Manejo de pila")
    ventana.geometry("400x400")



pila = logica_pila["crear_pila"]()


def manejar_apilar():
    elemento = entrada_elemento.get()
    if elemento:
        logica_pila["apilar"](pila, elemento)
        actualizar_pila()
        entrada_elemento.delete(0, tk.END)
    else:
        messagebox.showwarning("Entrada vacia", "Por favor ingresa un elemento")

def manejar_desapilar():
    try:
        elemento = logica_pila["desapilar"](pila)
        messagebox.showinfo("Desapilar", f"Elemento desapilado:{elemento}")
        actualizar_pila()
    except IndexError as e:
        messagebox.showerror("Error", str(e))

def manejar_cima():
    try:
        elemento = logica_pila["cima"](pila)
        messagebox.showinfo("Cima", f"Elemento de la cima:{elemento}")
        actualizar_pila()
    except IndexError as e:
        messagebox.showerror("Error", str(e))

def manejar_tamano():
    tam =  logica_pila["tamano"](pila)
    messagebox.showinfo("Tamaño", f"El tamañoi de la pila: {tam}")

def manejar_mostar():
    pila_actual = logica_pila["mostrar_pila"](pila)

def actualizar_pila():
    pila_actual = logica_pila["mostar_pila"](pila)
    etiqueta_pila.config(text=pila_actual)

tk.Label(ventana,text="Manejo de una pila",font=("Arial", 16)).pack(pady=10)

entrada_elemento = tk.Entry(ventana, width=30)
entrada_elemento.pack(pady=5)
tk.Button(ventana, text="Apilar", command=manejar_apilar).pack(pady=5)
tk.Button(ventana, text="Desapilar", command=manejar_desapilarr).pack(pady=5)
tk.Button(ventana, text="Ver Cima", command=manejar_cima).pack(pady=5)
tk.Button(ventana, text="Ver tamaño", command=manejar_tamano).pack(pady=5)
tk.Button(ventana, text="Mostrar Pila", command=manejar_mostar).pack(pady=5)

etiqueta_pila = tk.Labrl(ventana, text="Pila actual:[]", font=("Arial", 12))
etiqueta_pila.pack(pady=20)

ventana.mainloop()