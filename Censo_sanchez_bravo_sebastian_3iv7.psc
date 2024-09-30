Algoritmo  Censo_sanchez_bravo_sebastian_3iv7
    Definir nump, numA, nac, fall Como Entero
    Definir pervi, EJ, EV, et Como Entero
    Definir Añocons Como Entero
    Definir i, j Como Entero
	
    Escribir "Ingrese el número de personas para censar: "
    Leer nump
	
    Dimension nacs[nump]
    Dimension falls[nump]
	
    Para i=1 Hasta nump Con Paso 1 Hacer
        Escribir "Ingrese el año de nacimiento de la persona ", i, ": "
        Leer nac
        Escribir "Ingrese el año de fallecimiento de la persona ", i, ": "
        Leer fall
        nacs[i] = nac
        falls[i] = fall
    FinPara
	
    Escribir "Ingrese el número de años a consultar: "
    Leer numA
	
    Dimension Añoscons[numA]
	
    Para i=1 Hasta numA Con Paso 1 Hacer
        Escribir "Ingrese el año que desea consultar: "
        Leer Añocons
        Añoscons[i] = Añocons
    FinPara
	
    Para i=1 Hasta numA Con Paso 1 Hacer
        Añocons = Añoscons[i]
        pervi = 0
        EJ = 9999
        EV = -1
		
        Para j=1 Hasta nump Con Paso 1 Hacer
            nac = nacs[j]
            fall = falls[j]
			
            Si (nac <= Añocons) Y (fall >= Añocons) Entonces
                pervi = pervi + 1
                et = Añocons - nac
                Si et < EJ Entonces
                    EJ = et
                FinSi
                Si et > EV Entonces
                    EV = et
                FinSi
            FinSi
        FinPara
		
        Escribir "Año: ", Añocons
        Si pervi <= 0 Entonces
            Escribir "No habian personas vivas en ese año."
        SiNo
            Escribir "Personas vivas: ", pervi
            Escribir "Edad de la persona más joven: ", EJ
            Escribir "Edad de la persona más anciana: ", EV
        FinSi
    FinPara
FinAlgoritmo
