Algoritmo gestio
	
    Definir horaEntrada, minutoEntrada, segundoEntrada, horaSalida, minutoSalida, segundoSalida Como Real
    Definir tiempoHoras, tiempoMinutos, tiempoSegundos, minutosTotales Como Real
    Definir cobroTotal Como Real
    Definir bloques15min, minsRestantes, segRestantes Como Entero
    
	Repetir
        Escribir "Por favor, ingrese la hora de llegada (formato 24 horas, máximo 23)"
        Leer horaEntrada
        Si horaEntrada < 0 o horaEntrada > 23 Entonces
            Escribir "Hora inválida, intente nuevamente."
        FinSi
    Hasta Que horaEntrada >= 0 y horaEntrada <= 23
    Repetir
        Escribir "Ingrese los minutos de llegada (0 - 59)"
        Leer minutoEntrada
        Si minutoEntrada < 0 o minutoEntrada > 59 Entonces
            Escribir "Minutos no válidos, intente nuevamente."
        FinSi
    Hasta Que minutoEntrada >= 0 y minutoEntrada <= 59
    Repetir
        Escribir "Ingrese los segundos de llegada (0 - 59)"
        Leer segundoEntrada
        Si segundoEntrada < 0 o segundoEntrada > 59 Entonces
            Escribir "Segundos no válidos, intente nuevamente."
        FinSi
    Hasta Que segundoEntrada >= 0 y segundoEntrada <= 59
    Repetir
        Escribir "Ingrese la hora de salida (formato 24 horas, máximo 23)"
        Leer horaSalida
        Si horaSalida < 0 o horaSalida > 23 Entonces
            Escribir "Hora no válida, por favor intente de nuevo."
        FinSi
    Hasta Que horaSalida >= 0 y horaSalida <= 23
    Repetir
        Escribir "Ingrese los minutos de salida (0 - 59)"
        Leer minutoSalida
        Si minutoSalida < 0 o minutoSalida > 59 Entonces
            Escribir "Minutos inválidos, por favor intente nuevamente."
        FinSi
    Hasta Que minutoSalida >= 0 y minutoSalida <= 59
    Repetir
        Escribir "Ingrese los segundos de salida (0 - 59)"
        Leer segundoSalida
        Si segundoSalida < 0 o segundoSalida > 59 Entonces
            Escribir "Segundos no válidos, intente nuevamente."
        FinSi
    Hasta Que segundoSalida >= 0 y segundoSalida <= 59
	
    tiempoHoras = horaSalida - horaEntrada
    tiempoMinutos = minutoSalida - minutoEntrada
    tiempoSegundos = segundoSalida - segundoEntrada
	
    Si tiempoSegundos < 0 Entonces
        tiempoSegundos = tiempoSegundos + 60
        tiempoMinutos = tiempoMinutos - 1
    FinSi
    Si tiempoMinutos < 0 Entonces
        tiempoMinutos = tiempoMinutos + 60
        tiempoHoras = tiempoHoras - 1
    FinSi
    minutosTotales = (tiempoHoras * 60) + tiempoMinutos
    segRestantes = tiempoSegundos
	
    cobroTotal = 0
	
    Si minutosTotales >= 60 Entonces
        cobroTotal = cobroTotal + (Trunc(minutosTotales / 60)) * 15
    FinSi
    minsRestantes = minutosTotales % 60
    Si minsRestantes > 0 Entonces
        bloques15min = Trunc(minsRestantes / 15)
        Si bloques15min > 0 Entonces
            cobroTotal = cobroTotal + bloques15min * 6
        FinSi
    FinSi
	
    Si segRestantes > 0 Entonces
        cobroTotal = cobroTotal + (Trunc(segRestantes / 15)) * 1
    FinSi
	
    Escribir "El monto  a pagar es:", cobroTotal, "pesos"
    
FinAlgoritmo