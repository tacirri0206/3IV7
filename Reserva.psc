Algoritmo Reserva
    Dimension fechasEntrada[10], fechasSalida[10], estadoHabitacion[10]
    Definir seleccion, numHabitacion, diaEntrada, diaSalida, habitacionesOcupadas, entradaDeseada, salidaDeseada Como Entero
    habitacionesReservadas = 0
	
    Para indice = 1 Hasta 10 Con Paso 1 Hacer
        estadoHabitacion[indice] = Falso
        fechasEntrada[indice] = 0
        fechasSalida[indice] = 0
    Fin Para
	
    Mientras seleccion <> 5 Hacer
        Escribir "Bienvenido,seleccione una opcion"
        Escribir "1. Hacer una nueva reserva"
        Escribir "2. Cancelar una reserva "
        Escribir "3. Verificar habitaciones libres"
        Escribir "4. Ver porcentaje de ocupación"
        Escribir "5. Salir"
        Escribir "Seleccione una opción:"
        Leer seleccion
		
        Segun seleccion Hacer
            Caso 1:
                Escribir "Ingrese el número de habitación (1-10):"
                Leer numHabitacion
                Si numHabitacion >= 1 Y numHabitacion <= 10 Entonces
                    Si estadoHabitacion[numHabitacion] = Falso Entonces
                        Escribir "Escriba el día de entrada (1 a 365):"
                        Leer diaEntrada
                        Escribir "Escriba el día de salida (1 a 365):"
                        Leer diaSalida
						
                        Si diaSalida > diaEntrada Entonces
                            estadoHabitacion[numHabitacion] = Verdadero
                            fechasEntrada[numHabitacion] = diaEntrada
                            fechasSalida[numHabitacion] = diaSalida
                            habitacionesReservadas = habitacionesReservadas + 1
                            Escribir "Reserva completada: Habitación ", numHabitacion, " desde el día ", diaEntrada, " hasta el día ", diaSalida
                        Sino
                            Escribir "Error: La fecha de salida debe ser mayor a la fecha de entrada."
                        Fin Si
                    Sino
                        Escribir "Error: La habitación ya está en uso."
                    Fin Si
                Sino
                    Escribir "Número de habitación inválido."
                Fin Si
				
            Caso 2:
                Escribir "Indique el número de la habitación a cancelar (1-10):"
                Leer numHabitacion
                Si numHabitacion >= 1 Y numHabitacion <= 10 Entonces
                    Si estadoHabitacion[numHabitacion] = Verdadero Entonces
                        estadoHabitacion[numHabitacion] = Falso
                        fechasEntrada[numHabitacion] = 0
                        fechasSalida[numHabitacion] = 0
                        habitacionesReservadas = habitacionesReservadas - 1
                        Escribir "La reserva de la habitación ", numHabitacion, " ha sido cancelada."
                    Sino
                        Escribir "No hay reserva  para cancelar en esta habitación."
                    Fin Si
                Sino
                    Escribir "Número de habitación inválido."
                Fin Si
				
            Caso 3:
                Escribir "Indique la fecha de entrada deseada (1 a 365):"
                Leer entradaDeseada
                Escribir "Indique la fecha de salida deseada (1 a 365):"
                Leer salidaDeseada
				
                Si salidaDeseada > entradaDeseada Entonces
                    Escribir "Habitaciones disponibles en las fechas proporcionadas:"
                    Para i = 1 Hasta 10 Con Paso 1 Hacer
                        Si estadoHabitacion[i] = Falso O (fechasSalida[i] < entradaDeseada O fechasEntrada[i] > salidaDeseada) Entonces
                            Escribir "Habitación ", i, " está libre."
                        Sino
                            Escribir "Habitación ", i, " está en uso."
                        Fin Si
                    Fin Para
                Sino
                    Escribir "Error: La fecha de salida debe ser posterior a la de entrada."
                Fin Si
				
            Caso 4:
                Escribir "Porcentaje de habitaciones ocupadas:"
                Escribir (habitacionesReservadas / 10) * 100, "% del total de  las habitaciones están ocupadas."
				
            Caso 5:
                Escribir "Haz salido correctamente"
				
            De Otro Modo:
                Escribir "Opción icorrecta, vuelve a intentar."
        Fin Segun
    Fin Mientras
FinAlgoritmo