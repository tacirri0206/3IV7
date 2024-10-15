Algoritmo numprimos_sanchez
    
    Repetir
		Escribir "Ingresa un numero"
        Leer num
        
        Si num = 2 Entonces
            Escribir "Numero primo"
        SiNo
            Si num%2 = 1 Entonces
                Escribir "Es primo"
            SiNo
                Escribir "No es primo"
            FinSi
        FinSi
        
        Escribir "Si desea volver a ingresar un número ingrese la letra S y si desa terminar ingrese la letra N"
        Leer res
        
    Hasta Que res = "N" O res="n"
FinAlgoritmo