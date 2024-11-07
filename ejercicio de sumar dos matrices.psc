
Algoritmo sin_titulo
	definir filas, columnas, primera, segunda, resultado como entero
	escribir "ingrese la cantidad de filas de las dos matrices"
	leer filas
	escribir "ingrese la cantidad de columnas de las dos matrices"
	leer columnas
	
	dimension primera(filas, columnas)
	dimension segunda(filas, columnas)
	dimension resultado(filas, columnas)
	//rellenar
	escribir ""
	escribir "Para la primera matriz"
	para i = 1 hasta filas Hacer
		para j = 1 hasta columnas Hacer
			escribir "Ingrese el valor para la casilla ", i, " con ", j
			leer primera(i,j)
		FinPara
	FinPara
	escribir ""
	escribir "Para la Segunda matriz"
	para i = 1 hasta filas Hacer
		para j = 1 hasta columnas Hacer
			escribir "Ingrese el valor para la casilla ", i, " con ", j
			leer segunda(i,j)
		FinPara
	FinPara
	
	escribir "Para la Suma matriz un elemento por un elemento"
	para i = 1 hasta filas Hacer
		para j = 1 hasta columnas Hacer
			resultado(i,j) = primera (i,j) + segunda (i,j)
		FinPara
	FinPara
	
	para i = 1 hasta filas Hacer
		para j = 1 hasta columnas Hacer
			escribir sin saltar resultado(i,j), " "
		FinPara
		escribir ""
	FinPara
	
FinAlgoritmo
