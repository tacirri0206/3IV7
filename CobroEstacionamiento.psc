Algoritmo Cobroestacionaiento
	Definir Horaentrada, Minutoentrada, Horasalida, Minutosalida Como Real
	Definir totalhoras , totalminutos, minutostotalescuenta Como Real
	Definir totalcobro Como Real
	
	
	
	Escribir "Ingrese la hora de entrada (Formato 24 hrs)"
	Leer Horaentrada
	Escribir "Ingrese los minutos de entrada (Formato 24 hrs)"
	Leer Minutoentrada
	
	Escribir "Ingrese la hora de salida (Formato 24 hrs)"
	Leer Horasalida
	Escribir "Ingrese la hora de salida (Formato 24 hrs)"
	Leer Minutosalida 
	
	totalhoras = horasalida-Horaentrada
	totalminutos=Minutosalida-Minutoentrada
	
	Si totalminutos <0 Entonces
		totalminutos = totalminutos + 60
		totalhoras = totalhoras + 1
	Fin Si
	
	totalminutos = (totalhoras*60) + totalminutos 
	
	totalcobro = 0
	
	Si totalminutos >= 60 Entonces
		totalcobro = totalcobro + (totalminutos/60)*15
	Fin Si
	
	minutosrestantes = totalminutos%60
	Si minutosrestantes >= 0 Entonces
		fracciones15min = minutosrestantes
		totalcobro = totalcobro + fracciones15min * 6
	Fin Si
	
	Escribir  "El total a pagar es de: " , totalcobro, "pesos"
	
FinAlgoritmo
