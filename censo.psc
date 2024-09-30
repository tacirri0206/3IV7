	Proceso CensoNPersonasNAnios
		Definir n_personas, n_anios, nacimiento, fallecimiento, ac, pv, ej1, ea1, et Como Entero
		
		Escribir "Ingrese el n�mero de personas en el censo: "
		Leer n_personas
		
		Escribir "Ingrese el n�mero de a�os a consultar: "
		Leer n_anios
		
		Para anio_consulta = 1 Hasta n_anios Con Paso 1 Hacer
			Escribir "Ingrese el a�o que desea consultar (", anio_consulta, "): "
			Leer ac
			
			pv = 0
			ej1 = 9999
			ea1 = -1
			
			Para i = 1 Hasta n_personas Con Paso 1 Hacer
				Escribir "Ingrese el a�o de nacimiento de la persona ", i, ": "
				Leer nacimiento
				Escribir "Ingrese el a�o de fallecimiento de la persona ", i, ": "
				Leer fallecimiento
				
				Si (nacimiento <= ac) Y (fallecimiento >= ac) Entonces
					pv = pv + 1
					et = ac - nacimiento
					
					Si et < ej1 Entonces
						ej1 = et
					FinSi
					
					Si et > ea1 Entonces
						ea1 = et
					FinSi
				FinSi
			FinPara
			
			Escribir "A�o: ", ac
			Escribir "Personas vivas: ", pv
			
			Si pv > 0 Entonces
				Escribir "Edad de la persona m�s joven: ", ej1
				Escribir "Edad de la persona m�s anciana: ", ea1
			SiNo
				Escribir "No hab�a personas vivas en ese a�o."
			FinSi
		FinPara

FinProceso
