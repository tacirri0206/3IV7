Algoritmo DecimalABinario_Sanchezn
    Definir decimal, cociente Como Entero
    Definir binario Como Caracter
		
		Repetir
			Escribir "Ingrese un número decimal:"
			Leer decimal
			
			cociente <- decimal
			binario <- ""
			
			Mientras cociente > 0 Hacer
				Si cociente % 2 = 0 Entonces
					binario <- "0" + binario
				Sino
					binario <- "1" + binario
				FinSi
				cociente <- trunc(cociente / 2)
			FinMientras
			
			Si binario = "" Entonces
				binario <- "0"
			FinSi
			
			Escribir "El número ", decimal, " en binario es: ", binario
			
			Escribir "Si desea convertir otro numero ingresa la letra S y si desea finalizar el programa ingresa N"
			Leer rep
		Hasta Que rep = "N" o rep = "n"
FinAlgoritmo