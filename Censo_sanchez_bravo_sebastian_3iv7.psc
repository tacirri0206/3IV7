Algoritmo  Censo_sanchez_bravo_sebastian_3iv7
    Definir nump, numA, nac, fall Como Entero
    Definir pervi, EJ, EV, et Como Entero
    Definir A�ocons Como Entero
    Definir i, j Como Entero
	
    Escribir "Ingrese el n�mero de personas para censar: "
    Leer nump
	
    Dimension nacs[nump]
    Dimension falls[nump]
	
    Para i=1 Hasta nump Con Paso 1 Hacer
        Escribir "Ingrese el a�o de nacimiento de la persona ", i, ": "
        Leer nac
        Escribir "Ingrese el a�o de fallecimiento de la persona ", i, ": "
        Leer fall
        nacs[i] = nac
        falls[i] = fall
    FinPara
	
    Escribir "Ingrese el n�mero de a�os a consultar: "
    Leer numA
	
    Dimension A�oscons[numA]
	
    Para i=1 Hasta numA Con Paso 1 Hacer
        Escribir "Ingrese el a�o que desea consultar: "
        Leer A�ocons
        A�oscons[i] = A�ocons
    FinPara
	
    Para i=1 Hasta numA Con Paso 1 Hacer
        A�ocons = A�oscons[i]
        pervi = 0
        EJ = 9999
        EV = -1
		
        Para j=1 Hasta nump Con Paso 1 Hacer
            nac = nacs[j]
            fall = falls[j]
			
            Si (nac <= A�ocons) Y (fall >= A�ocons) Entonces
                pervi = pervi + 1
                et = A�ocons - nac
                Si et < EJ Entonces
                    EJ = et
                FinSi
                Si et > EV Entonces
                    EV = et
                FinSi
            FinSi
        FinPara
		
        Escribir "A�o: ", A�ocons
        Si pervi <= 0 Entonces
            Escribir "No habian personas vivas en ese a�o."
        SiNo
            Escribir "Personas vivas: ", pervi
            Escribir "Edad de la persona m�s joven: ", EJ
            Escribir "Edad de la persona m�s anciana: ", EV
        FinSi
    FinPara
FinAlgoritmo
