Algoritmo ContarPositivosNegativos_Sanchez
	Repetir
		pos <- 0
		neg <- 0
		
		Escribir "Introduce n�meros (escribe . para terminar):"
		
		Repetir
			Leer nums
			Si nums <> "." Entonces
				numero <- ConvertirANumero(nums)
				Si numero > 0 Entonces
					pos <- pos + 1
				Sino 
					Si numero < 0 Entonces
						neg <- neg + 1
					FinSi
				FinSi
			FinSi
		Hasta Que nums = "."
		
		Escribir "N�meros positivos: ", pos
		Escribir "N�meros negativos: ", neg
		
		Escribir "Si deseas repetir el programa escribe S y si deseas terminar el programa escribe N"
		Leer rep
	Hasta Que rep = "n" o rep = "N"
FinAlgoritmo
