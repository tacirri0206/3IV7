Función Rectangulo(base,altura)
	Definir area, perimetro Como Real
	area <- base*altura
	perimetro <- 2*(base+altura)
	Escribir 'El área del rectángulo es: ', area
	Escribir 'El perímetro del rectángulo es: ', perimetro
FinFunción

Función pentagono(apotema, l1, l2, l3, l3, l4, l5)
	Definir area, perimetro Como Real
	perimetro <- l1+l2+l3+l4+l5
	area <- (perimetro*apotema)/2
	Escribir 'El área del pentagono es: ', area
	Escribir 'El perímetro del pentagono es: ', perimetro
FinFunción

Función hexagono(apotema, l1, l2, l3, l3, l4, l5, l6)
Definir area, perimetro Como Real
perimetro <- l1+l2+l3+l4+l5+l6
area <- (perimetro*apotema)/2
Escribir 'El área del hexagono es: ', area
Escribir 'El perímetro del hexagono es: ', perimetro
FinFuncion

Función octagono(apotema, l1, l2, l3, l3, l4, l5, l6,l7, l8)
Definir area, perimetro Como Real
perimetro <- l1+l2+l3+l4+l5+l6+l7+l8
area <- (perimetro*apotema)/2
Escribir 'El área del octagono es: ', area
Escribir 'El perímetro del octagono es: ', perimetro
FinFuncion

Funcion decagono(apotema, l1, l2, l3, l3, l4, l5, l6,l7, l8, l9, l10)
	Definir area, perimetro Como Real
	perimetro <- l1+l2+l3+l4+l5+l6+l7+l8+l9+l10
	area <- (perimetro*apotema)/2
	Escribir 'El área del decagono es: ', area
	Escribir 'El perímetro del decagono es: ', perimetro
FinFuncion
Funcion dodecagono(apotema, l1, l2, l3, l3, l4, l5, l6,l7, l8, l9, l10,l11,l12)
	Definir area, perimetro Como Real
	perimetro <- l1+l2+l3+l4+l5+l6+l7+l8+l9+l10+l11+l12
	area <- (perimetro*apotema)/2
	Escribir 'El área del dodecagono es: ', area
	Escribir 'El perímetro del dodecagono es: ', perimetro
FinFuncion

Algoritmo Calculadora_Figuras
	Definir opcion Como Cadena
	Definir base, altura, l1, l2, l3 Como Real
	Escribir 'Selecciona una opción: '
	Escribir 'A-área y perímetro del rectángulo'
	Escribir 'B-área y perímetro del pentágono'
	Escribir 'C-área y perímetro del hexagono'
	Escribir 'D-área y perímetro del octagono'
	Escribir 'E-área y perímetro del decagono'
	Escribir 'F-área y perímetro del pentágono'

	Leer opcion
	Según opcion Hacer
		'A', 'a':
			Escribir 'Ingresa la base del rectángulo'
			Leer base
			Escribir 'Ingresa la altura del rectángulo'
			Leer altura
			Rectangulo(base,altura)
		'B', 'b':
			Escribir 'Ingresa el apotema del pentagono'
			Leer apotema
			Escribir 'Ingresa lado 1'
			Leer l1
			Escribir 'Ingresa lado 2'
			Leer l2
			Escribir 'Ingresa lado 3'
			Leer l3
			Escribir 'Ingresa lado 4'
			Leer l4
			Escribir 'Ingresa lado 5'
			Leer l5
			pentagono(apotema, l1, l2, l3, l3, l4, l5)
		'C' , 'c':
			Escribir 'Ingresa el apotema del hexagono'
			Leer apotema
			Escribir 'Ingresa lado 1'
			Leer l1
			Escribir 'Ingresa lado 2'
			Leer l2
			Escribir 'Ingresa lado 3'
			Leer l3
			Escribir 'Ingresa lado 4'
			Leer l4
			Escribir 'Ingresa lado 5'
			Leer l5
			Escribir 'Ingresa lado 6'
			Leer l6
			hexagono(apotema, l1, l2, l3, l3, l4, l5, l6)
		'D', 'd':
			Escribir 'Ingresa el apotema del octagono'
			Leer apotema
			Escribir 'Ingresa lado 1'
			Leer l1
			Escribir 'Ingresa lado 2'
			Leer l2
			Escribir 'Ingresa lado 3'
			Leer l3
			Escribir 'Ingresa lado 4'
			Leer l4
			Escribir 'Ingresa lado 5'
			Leer l5
			Escribir 'Ingresa lado 6'
			Leer l6
			Escribir 'Ingresa lado 7'
			Leer l7
			Escribir 'Ingresa lado 8'
			Leer l8
			octagono(apotema, l1, l2, l3, l3, l4, l5, l6,l7, l8)
		'E', 'e':
			Escribir 'Ingresa el apotema del decagono'
			Leer apotema
			Escribir 'Ingresa lado 1'
			Leer l1
			Escribir 'Ingresa lado 2'
			Leer l2
			Escribir 'Ingresa lado 3'
			Leer l3
			Escribir 'Ingresa lado 4'
			Leer l4
			Escribir 'Ingresa lado 5'
			Leer l5
			Escribir 'Ingresa lado 6'
			Leer l6
			Escribir 'Ingresa lado 7'
			Leer l7
			Escribir 'Ingresa lado 8'
			Leer l8
			Escribir 'Ingresa lado 9'
			Leer l9
			Escribir 'Ingresa lado 10'
			leer l10
			decagono(apotema, l1, l2, l3, l3, l4, l5, l6,l7, l8, l9, l10)
		'F', 'f':
			Escribir 'Ingresa el apotema del dodecagono'
			Leer apotema
			Escribir 'Ingresa lado 1'
			Leer l1
			Escribir 'Ingresa lado 2'
			Leer l2
			Escribir 'Ingresa lado 3'
			Leer l3
			Escribir 'Ingresa lado 4'
			Leer l4
			Escribir 'Ingresa lado 5'
			Leer l5
			Escribir 'Ingresa lado 6'
			Leer l6
			Escribir 'Ingresa lado 7'
			Leer l7
			Escribir 'Ingresa lado 8'
			Leer l8
			Escribir 'Ingresa lado 9'
			Leer l9
			Escribir 'Ingresa lado 10'
			leer l10
			Escribir 'Ingresa lado 11'
			Leer l11
			Escribir 'Ingresa lado 12'
			Leer l12
			dodecagono(apotema, l1, l2, l3, l3, l4, l5, l6,l7, l8, l9, l10,l11,l12)
		De Otro Modo:
			Escribir 'Opción no válida'
	FinSegún
FinAlgoritmo
