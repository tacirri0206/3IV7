import tkinter as tk
from tkinter import messagebox, simpledialog
from algoritmos_ordenamiento import burbuja, seleccion_sort, insercion, merge, quick_sort, ordenar_lista

class AplicacionOrdenamiento:
    def __init__(self, master):
        self.master = master
        master.title("Programa de Ordenamiento")
        master.geometry("400x300")
        
        self.lista_numeros = []
        
        self.label_numeros = tk.Label(master, text="Lista de Números: ")
        self.label_numeros.pack(pady=10)
        
        self.boton_agregar = tk.Button(master, text="Agregar Número", command=self.agregar_numero)
        self.boton_agregar.pack(pady=5)
        
        self.boton_ordenar = tk.Button(master, text="Ordenar", command=self.mostrar_metodos, state=tk.DISABLED)
        self.boton_ordenar.pack(pady=5)
        
        self.label_resultado = tk.Label(master, text="")
        self.label_resultado.pack(pady=10)
    
    def agregar_numero(self):
        if len(self.lista_numeros) >= 40:
            messagebox.showwarning("Límite Alcanzado", "Solo se pueden ingresar 40 números")
            return
        
        try:
            numero = simpledialog.askfloat("Entrada", "Ingrese un número:")
            if numero is not None:
                self.lista_numeros.append(numero)
                self.actualizar_etiqueta()
                if len(self.lista_numeros) > 0:
                    self.boton_ordenar.config(state=tk.NORMAL)
        except ValueError:
            messagebox.showerror("Error", "Ingrese un número válido")
    
    def actualizar_etiqueta(self):
        self.label_numeros.config(text=f"Lista de Números: {self.lista_numeros}")
    
    def mostrar_metodos(self):
        ventana_metodos = tk.Toplevel(self.master)
        ventana_metodos.title("Seleccione Método de Ordenamiento")
        ventana_metodos.geometry("300x250")
        
        metodos = [
            ("Burbuja", burbuja),
            ("Selección", seleccion_sort),
            ("Inserción", insercion),
            ("Merge Sort", merge),
            ("Quick Sort", quick_sort)
        ]
        
        for texto, metodo in metodos:
            boton = tk.Button(ventana_metodos, text=texto, 
                               command=lambda m=metodo: self.ordenar(m))
            boton.pack(pady=5, padx=20, fill=tk.X)
    
    def ordenar(self, metodo):
        lista_original = self.lista_numeros.copy()
        lista_ordenada, tiempo_ordenamiento = ordenar_lista(self.lista_numeros, metodo)
        
        nombre_metodo = {
            burbuja: "Burbuja",
            seleccion_sort: "Selección",
            insercion: "Inserción",
            merge: "Merge Sort", 
            quick_sort: "Quick Sort"
        }.get(metodo, "Desconocido")
        
        resultado = f"Método de Ordenamiento: {nombre_metodo}\n"
        resultado += f"Lista Original: {lista_original}\n"
        resultado += f"Lista Ordenada: {lista_ordenada}\n"
        resultado += f"Tiempo de Ordenamiento: {tiempo_ordenamiento:.4f} ms"
        
        self.label_resultado.config(text=resultado)

def main():
    root = tk.Tk()
    app = AplicacionOrdenamiento(root)
    root.mainloop()

if __name__ == "__main__":
    main()