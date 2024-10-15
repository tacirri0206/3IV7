Algoritmo ConversionPies_Sanchez
		Repetir
			Escribir "Ingrese la medida en pies:"
			Leer p
			
			Escribir "Elije la unidad a la que convertiras:"
			Escribir "1-Pulgadas"
			Escribir "2-Yardas"
			Escribir "3-Centímetros"
			Escribir "4-Metros"
			Leer opc
			
			Segun opc Hacer
				1:
					conv <- p * 12
					Escribir p, " pies son ", conv, " pulgadas"
				2:
					conv <- p / 3
					Escribir p, " pies son ", conv, " yardas"
				3:
					conv <- p * 12 * 2.54
					Escribir p, " pies son ", conv, " centímetros"
				4:
					conv <- p * 12 * 2.54 / 100
					Escribir p, " pies son ", conv, " metros"
			FinSegun
			
			Escribir "Si desea realizar otra conversion escriba S y si desea terminar el ptrograma ingresa N"
			Leer rep
		Hasta Que rep = "N" o rep = "n"
FinAlgoritmo