Algoritmo par_e_impar_sanchez
    Definir num Como Entero
    Definir res Como Caracter
    
    Repetir
        Escribir "Ingrese un número: "
        Leer num
        
        Si (num % 2) = 0 Entonces
            Escribir "El número  es par"
        SiNo
            Escribir "El número impar"
        FinSi
        
        Escribir "Si desea ingresar otro número, ingrese la letra S y si desa terminar ingrese la letra N"
        Leer res
        
    Hasta Que res = "N" O respuesta = "n"
    
    Escribir "Fin del programa"
FinAlgoritmo