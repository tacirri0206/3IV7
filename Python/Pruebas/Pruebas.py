import tkinter as tk
from tkinter import messagebox

class GestorInvitados:
    def __init__(self):
        self.invitados = []
        
        # Ventana principal
        self.ventana = tk.Tk()
        self.ventana.title("Invitados")
        self.ventana.geometry("400x700")
        
        # Lista simple
        self.lista = tk.Listbox(self.ventana, width=50, height=10)
        self.lista.pack(padx=10, pady=10)
        
        # Frame para campos
        frame = tk.Frame(self.ventana)
        frame.pack(padx=10, pady=5)
        
        # Campos
        campos = ["ID:", "Nombre:", "Teléfono:", "Email:", 
                 "Tipo invitado:", "Mesa asignada:", 
                 "Confirmación:", "Menú especial:"]
        
        self.entradas = {}
        
        for i, campo in enumerate(campos):
            tk.Label(frame, text=campo).grid(row=i, column=0, sticky='w', pady=2)
            entrada = tk.Entry(frame)
            entrada.grid(row=i, column=1, pady=2, padx=5)
            self.entradas[campo.replace(":", "")] = entrada
        
        # Botones simples
        tk.Button(self.ventana, text="Agregar", command=self.agregar).pack(pady=2)
        tk.Button(self.ventana, text="Eliminar", command=self.eliminar).pack(pady=2)
        tk.Button(self.ventana, text="Ver", command=self.ver_detalles).pack(pady=2)
        
        self.cargar_invitados()
        self.actualizar_lista()
    
    def cargar_invitados(self):
        try:
            with open("invitados.txt", "r") as archivo:
                self.invitados = []
                for linea in archivo:
                    datos = linea.strip().split(",")
                    if len(datos) >= 8:
                        self.invitados.append({
                            "ID": datos[0],
                            "Nombre": datos[1],
                            "Teléfono": datos[2],
                            "Email": datos[3],
                            "Tipo invitado": datos[4],
                            "Mesa asignada": datos[5],
                            "Confirmación": datos[6],
                            "Menú especial": datos[7]
                        })
        except:
            self.invitados = []
    
    def guardar_invitados(self):
        try:
            with open("invitados.txt", "w") as archivo:
                for inv in self.invitados:
                    archivo.write(f"{inv['ID']},{inv['Nombre']},{inv['Teléfono']},"
                                f"{inv['Email']},{inv['Tipo invitado']},"
                                f"{inv['Mesa asignada']},{inv['Confirmación']},"
                                f"{inv['Menú especial']}\n")
        except:
            tk.messagebox.showinfo("Error al guardar")
    
    def actualizar_lista(self):
        self.lista.delete(0, tk.END)
        for inv in self.invitados:
            self.lista.insert(tk.END, f"{inv['ID']} - {inv['Nombre']} - Mesa {inv['Mesa asignada']}")
    
    def agregar(self):
        datos = {}
        for campo, entrada in self.entradas.items():
            valor = entrada.get().strip()
            if not valor:
                tk.messagebox.showinfo("", "Llena todos los campos")
                return
            datos[campo] = valor
        
        self.invitados.append(datos)
        self.guardar_invitados()
        self.actualizar_lista()
        
        for entrada in self.entradas.values():
            entrada.delete(0, tk.END)
        
        tk.messagebox.showinfo("", "Agregado!")
    
    def eliminar(self):
        if not self.lista.curselection():
            tk.messagebox.showinfo("", "Selecciona un invitado")
            return
            
        if tk.messagebox.askyesno("", "¿Borrar?"):
            self.invitados.pop(self.lista.curselection()[0])
            self.guardar_invitados()
            self.actualizar_lista()
            tk.messagebox.showinfo("", "Borrado!")
    
    def ver_detalles(self):
        if not self.lista.curselection():
            tk.messagebox.showinfo("", "Selecciona un invitado")
            return
            
        inv = self.invitados[self.lista.curselection()[0]]
        info = f"""
        ID: {inv['ID']}
        Nombre: {inv['Nombre']}
        Teléfono: {inv['Teléfono']}
        Email: {inv['Email']}
        Tipo: {inv['Tipo invitado']}
        Mesa: {inv['Mesa asignada']}
        Confirmación: {inv['Confirmación']}
        Menú: {inv['Menú especial']}
        """
        tk.messagebox.showinfo("", info)
    
    def iniciar(self):
        self.ventana.mainloop()

if __name__ == "__main__":
    app = GestorInvitados()
    app.iniciar()