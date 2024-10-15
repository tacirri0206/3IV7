Algoritmo SumaNumerosNaturales_ingresando
	Repetir
		suma <- 0
		Repetir
			Escribir "Ingrese hasta qué número desea sumar desde el 1 hasta el 100): "
			Leer num
		Hasta Que num >= 1 Y num <= 100
		Para i <- 1 Hasta num Con Paso 1 Hacer
			suma <- suma + i
		FinPara
		
		Escribir "La suma de los primeros ", num, " número/s  es: ", suma
		
		Escribir "Si desea repetir el programa ingrese la letra S y si desea terminar el programa ingrese la letra N"
		Leer res
	Hasta Que res = "N" O res = "n"
FinAlgoritmo
