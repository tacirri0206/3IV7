Algoritmo SUMADENUMEROS_SANCHEZ
    Definir N como Entero
    Definir Suma Como Entero
    Definir res Como Caracter
    
    Repetir
        N = 0
        Suma <- 0
        Escribir "Realiza la suma de N numeros"
        Leer limi
        
        Para acumulador = 1 Hasta limi Con Paso 1 Hacer
            N = N + 1
            Escribir N
            Suma = N + Suma
            Escribir Suma
        FinPara
        
        Escribir "La Suma es: ", Suma
        
        Escribir "Si desea realizar otra suma ingrese la letra S y si desea terminar el programa ingrese la letra N"
        Leer res
    Hasta Que res = "N" O res = "n"
FinAlgoritmo