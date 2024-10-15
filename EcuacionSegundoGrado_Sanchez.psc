Algoritmo EcuacionSegundoGrado_Sanchez
		
		Repetir
			Escribir "Ingrese los coeficientes de la ecuación ax^2 + bx + c = 0"
			Escribir "a:"
			Leer a
			Escribir "b:"
			Leer b
			Escribir "c:"
			Leer c
			
			cont <- b^2 - 4*a*c
			
			Si cont >= 0 Entonces
				x1 <- (-b - raiz(cont)) / (2*a)
				x2 <- (-b + raiz(cont)) / (2*a)
				Escribir "Las soluciones son:"
				Escribir "x1 = ", x1
				Escribir "x2 = ", x2
			Sino
				Escribir "La solucion da como resultado nunmeros imaguinarios"
			FinSi
			
			Escribir "Si desea repetir el cácluco escribe S y si desea finalizar el programa ingresa N"
			Leer rep
		Hasta Que rep = "N" o rep = "n"
FinAlgoritmo