Algoritmo SumaPrimeros100Naturales_siningresar
		
		Repetir
			suma <- 0
			
			Para i <- 1 Hasta 100 Con Paso 1 Hacer
				suma <- suma + i
			FinPara
			
			Escribir "La suma de los primeros 100 n�meros naturales es: ", suma
			
			Escribir "�Desea repetir el c�lculo? (S/N)"
			Leer res
			Hasta Que res = "N" O res = "n"
					
					Escribir "Fin del programa"
FinAlgoritmo