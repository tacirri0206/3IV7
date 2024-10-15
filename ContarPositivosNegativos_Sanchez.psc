Algoritmo ContarPositivosNegativosMenu
    Definir opcion Como Entero
    Definir salir Como Logico
    
    salir <- Falso
    
    Repetir
        Escribir "MENÚ PRINCIPAL"
        Escribir "1. Contar números positivos y negativos"
        Escribir "2. Salir del programa"
        Escribir "Elija una opción:"
        Leer opcion
        
        Segun opcion Hacer
            1:
                ContarNumeros
            2:
                salir <- Verdadero
                Escribir "Gracias por usar el programa. ¡Hasta luego!"
            De Otro Modo:
                Escribir "Opción no válida. Por favor, elija 1 o 2."
        FinSegun
        
    Hasta Que salir
FinAlgoritmo

SubProceso ContarNumeros
    Definir numero, positivos, negativos, ceros Como Entero
    Definir continuar Como Caracter
    
    positivos <- 0
    negativos <- 0
    ceros <- 0
    
    Repetir
        Escribir "Ingrese un número (o 0 para terminar):"
        Leer numero
        
        Si numero > 0 Entonces
            positivos <- positivos + 1
        Sino 
			Si numero < 0 Entonces
				negativos <- negativos + 1
			Sino
				ceros <- ceros + 1
			FinSi
			
			Si numero <> 0 Entonces
				Escribir "¿Desea ingresar otro número? (S/N)"
				Leer continuar
			Sino
				continuar <- "N"
			FinSi
		FinSi
		
		Hasta Que Mayusculas(continuar) = "N"
		
		Escribir "Resultados:"
		Escribir "Números positivos: ", positivos
		Escribir "Números negativos: ", negativos
		Escribir "Ceros: ", ceros - 1  // Restamos 1 para no contar el cero final
		
		Escribir "Presione cualquier tecla para volver al menú principal"
		Esperar Tecla
FinSubProceso