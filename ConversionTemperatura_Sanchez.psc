Algoritmo ConversionTemperatura_Sanchez
		
		Repetir
			Escribir "Ingresa la temperatura:"
			Leer temperatura
			
			Escribir "Elije la medida original de la temperatura:"
			Escribir "1. Fahrenheit"
			Escribir "2. Celsius"
			Escribir "3. Kelvin"
			Escribir "4. Rankine"
			Leer tempI
			
			Escribir "Elije la medida a la que desea convertir:"
			Escribir "1. Fahrenheit"
			Escribir "2. Celsius"
			Escribir "3. Kelvin"
			Escribir "4. Rankine"
			Leer tempf
			
			Segun tempI Hacer
				1: 
					Segun tempf Hacer
						1: res <- (tempI)
						2: res <- (temperatura - 32) * 5/9
						3: res <- (temperatura + 459.67) * 5/9 
						4: res <- temperatura + 459.67 
					FinSegun
				2: 
					Segun tempf Hacer
						1: res <- temperatura * 9/5 + 32 
						2: resultado <- (tempI)
						3: res <- temperatura + 273.15 
						4: res <- (temperatura + 273.15) * 9/5 
					FinSegun
				3: 
					Segun tempf Hacer
						1: res <- temperatura * 9/5 - 459.67
						2: res <- temperatura - 273.15
						3: res <-(tempI)
						4: res <- temperatura * 9/5
					FinSegun
				4: 
					Segun tempf Hacer
						1: res <- temperatura - 459.67 
						2: res <- (temperatura - 491.67) * 5/9 
						3: res <- temperatura * 5/9 
						4: res <- (tempI)
					FinSegun
			FinSegun
			Escribir "La temperatura convertida es: ", res
			
			Escribir "Si desea relizar otra cnoversion ingresa la letra S y si desea finalizar el programa ingresa N"
			Leer rep
			
		Hasta Que rep = "N" o rep = "n"
FinAlgoritmo