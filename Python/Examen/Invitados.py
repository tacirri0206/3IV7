import tkinter as tk
from tkinter import ttk, messagebox, simpledialog
import os
from datetime import datetime

ARCHIVO = "invitados.txt"
CAMPOS = ["id", "nombre", "telefono", "email", "tipo_invitado", "mesa_asignada", "confirmacion", "menu_especial"]

class GestionInvitados:
    def __init__(self):
        self.invitados = []
        self.ventana = tk.Tk()
        self.ventana.title("Gestión de Invitados a la Fiesta")
        self.ventana.geometry("1000x600")
        self.cargar_datos()
        self.setup_ui()

    def setup_ui(self):
        main_frame = ttk.Frame(self.ventana, padding="10")
        main_frame.grid(row=0, column=0, sticky=(tk.W, tk.E, tk.N, tk.S))

        ttk.Button(main_frame, text="Registrar Invitado", command=self.registrar_invitado).grid(row=0, column=0, padx=5, pady=5)
        ttk.Button(main_frame, text="Editar Invitado", command=self.editar_invitado).grid(row=0, column=1, padx=5, pady=5)
        ttk.Button(main_frame, text="Buscar Invitado", command=self.buscar_invitado).grid(row=0, column=2, padx=5, pady=5)
        ttk.Button(main_frame, text="Eliminar Invitado", command=self.eliminar_invitado).grid(row=0, column=3, padx=5, pady=5)

        self.tree = ttk.Treeview(main_frame, columns=CAMPOS, show='headings')
        
        for campo in CAMPOS:
            self.tree.heading(campo, text=campo.replace('_', ' ').title())
            self.tree.column(campo, width=120)

        self.tree.grid(row=1, column=0, columnspan=4, pady=10)

        scrollbar = ttk.Scrollbar(main_frame, orient=tk.VERTICAL, command=self.tree.yview)
        scrollbar.grid(row=1, column=4, sticky='ns')
        self.tree.configure(yscrollcommand=scrollbar.set)

        self.actualizar_tabla()

    def cargar_datos(self):
        if os.path.exists(ARCHIVO):
            with open(ARCHIVO, "r", encoding='utf-8') as f:
                for linea in f:
                    datos = linea.strip().split(",")
                    if len(datos) == 8:
                        invitado = {
                            "id": datos[0],
                            "nombre": datos[1],
                            "telefono": datos[2],
                            "email": datos[3],
                            "tipo_invitado": datos[4],
                            "mesa_asignada": datos[5],
                            "confirmacion": datos[6],
                            "menu_especial": datos[7]
                        }
                        self.invitados.append(invitado)

    def guardar_datos(self):
        with open(ARCHIVO, "w", encoding='utf-8') as f:
            for invitado in self.invitados:
                f.write(f"{invitado['id']},{invitado['nombre']},{invitado['telefono']},{invitado['email']},"
                       f"{invitado['tipo_invitado']},{invitado['mesa_asignada']},{invitado['confirmacion']},"
                       f"{invitado['menu_especial']}\n")

    def actualizar_tabla(self):
        for item in self.tree.get_children():
            self.tree.delete(item)
        
        for invitado in self.invitados:
            valores = [invitado[campo] for campo in CAMPOS]
            self.tree.insert('', 'end', values=valores)

    def registrar_invitado(self):
        nuevo_id = str(len(self.invitados) + 1)
        
        nombre = simpledialog.askstring("Registro", "Nombre del invitado:")
        if not nombre:
            return
        
        telefono = simpledialog.askstring("Registro", "Teléfono:")
        email = simpledialog.askstring("Registro", "Email:")
        tipo_invitado = simpledialog.askstring("Registro", "Tipo de invitado (Familiar/Amigo):")
        mesa_asignada = simpledialog.askstring("Registro", "Mesa asignada:")
        confirmacion = simpledialog.askstring("Registro", "Confirmación (Pendiente/Confirmado/Rechazado):")
        menu_especial = simpledialog.askstring("Registro", "Menú especial (Sí/No):")

        nuevo_invitado = {
            "id": nuevo_id,
            "nombre": nombre,
            "telefono": telefono,
            "email": email,
            "tipo_invitado": tipo_invitado,
            "mesa_asignada": mesa_asignada,
            "confirmacion": confirmacion,
            "menu_especial": menu_especial
        }

        self.invitados.append(nuevo_invitado)
        self.guardar_datos()
        self.actualizar_tabla()
        messagebox.showinfo("Éxito", "Invitado registrado correctamente")

    def editar_invitado(self):
        seleccion = self.tree.selection()
        if not seleccion:
            messagebox.showwarning("Advertencia", "Por favor seleccione un invitado para editar")
            return

        item = self.tree.item(seleccion[0])
        id_invitado = item['values'][0]

        for i, invitado in enumerate(self.invitados):
            if invitado['id'] == str(id_invitado):
                nombre = simpledialog.askstring("Editar", "Nombre:", initialvalue=invitado['nombre'])
                if nombre is None:
                    return
                
                telefono = simpledialog.askstring("Editar", "Teléfono:", initialvalue=invitado['telefono'])
                email = simpledialog.askstring("Editar", "Email:", initialvalue=invitado['email'])
                tipo_invitado = simpledialog.askstring("Editar", "Tipo de invitado:", initialvalue=invitado['tipo_invitado'])
                mesa_asignada = simpledialog.askstring("Editar", "Mesa asignada:", initialvalue=invitado['mesa_asignada'])
                confirmacion = simpledialog.askstring("Editar", "Confirmación:", initialvalue=invitado['confirmacion'])
                menu_especial = simpledialog.askstring("Editar", "Menú especial:", initialvalue=invitado['menu_especial'])

                self.invitados[i].update({
                    "nombre": nombre,
                    "telefono": telefono,
                    "email": email,
                    "tipo_invitado": tipo_invitado,
                    "mesa_asignada": mesa_asignada,
                    "confirmacion": confirmacion,
                    "menu_especial": menu_especial
                })

                self.guardar_datos()
                self.actualizar_tabla()
                messagebox.showinfo("Éxito", "Invitado actualizado correctamente")
                break

    def buscar_invitado(self):
        criterio = simpledialog.askstring("Buscar", "Ingrese el nombre o ID del invitado:")
        if not criterio:
            return

        encontrados = []
        for invitado in self.invitados:
            if (criterio.lower() in invitado['nombre'].lower() or 
                criterio == invitado['id']):
                encontrados.append(invitado)

        for item in self.tree.get_children():
            self.tree.delete(item)
        
        for invitado in encontrados:
            valores = [invitado[campo] for campo in CAMPOS]
            self.tree.insert('', 'end', values=valores)

        if not encontrados:
            messagebox.showinfo("Búsqueda", "No se encontraron invitados")
            self.actualizar_tabla()

    def eliminar_invitado(self):
        seleccion = self.tree.selection()
        if not seleccion:
            messagebox.showwarning("Advertencia", "Por favor seleccione un invitado para eliminar")
            return

        if messagebox.askyesno("Confirmar", "¿Está seguro de eliminar este invitado?"):
            item = self.tree.item(seleccion[0])
            id_invitado = item['values'][0]

            self.invitados = [inv for inv in self.invitados if inv['id'] != str(id_invitado)]
            self.guardar_datos()
            self.actualizar_tabla()
            messagebox.showinfo("Éxito", "Invitado eliminado correctamente")

    def ejecutar(self):
        self.ventana.mainloop()

if __name__ == "__main__":
    app = GestionInvitados()
    app.ejecutar()