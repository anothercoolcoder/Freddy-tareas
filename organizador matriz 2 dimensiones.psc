funcion arreglo_matriz_r = arreglo_matriz (a, f, c,s)
	t = f * c
	dimension b[t]
	x = 1
	para i = 1 hasta f
		para j = 1 hasta c
			b(x) = a[i,j]
			x = x + 1
		FinPara
	FinPara
	si s=1 Entonces
		escribir "ascendente"
		para i = 1 hasta t
			para j = i+1 hasta t con paso 1 Hacer
				si b(i) > b(j)
					temp = b(i)
					b(i) = b(j)
					b(j) = temp
				FinSi
			FinPara
		FinPara
	sino
		si s = 2 Entonces
			escribir "decendente"
			para i = 1 hasta t
				para j = i+1 hasta t con paso 1 Hacer
					si b(i) > b(j)
						temp = b(i)
						b(i) = b(j)
						b(j) = temp
					FinSi
				FinPara
			FinPara
		FinSi
	FinSi
	
	x = 1
	para i = 1 hasta f
		para j = 1 hasta c
			a[i,j] = b(x)  
			x = x + 1
		FinPara
	FinPara
	para i desde 1 hasta f Hacer
		para j desde 1 hasta c
			escribir Sin Saltar a(i,j), " "
		FinPara
		escribir ""
	FinPara
FinFuncion

Algoritmo organizar
	definir filas, columnas, a, s Como Entero
	
	escribir "Escriba un tamaño para las filas"
	leer filas
	escribir "Escriba un tamaño para las columnas"
	leer columnas
	dimension a[filas, columnas]
	
	para i desde 1 hasta filas
		para j desde 1 hasta columnas
			escribir "ingrese un valor para la fila #", i, " con columna #", j
			leer a[i,j]
		FinPara
	FinPara
	escribir "Seleciona el tipo de ordenamiento"
	escribir "1. Ascendente"
	escribir "2. Descendente"
	leer opcion
	si opcion = 1 Entonces
		s = 1
		arreglo_matriz_r = arreglo_matriz(a, filas, columnas,s)
	SiNo
		si opcion = 2 Entonces
			s = 2
			arreglo_matriz_r = arreglo_matriz(a, filas, columnas,s)
		sino
			escribir "opcion no valida"
			escribir "no se realizo ningun cambio"
		FinSi
	FinSi
	
	para i desde 1 hasta filas Hacer
		para j desde 1 hasta columnas
			escribir sin saltar a(i,j), " "
		FinPara
		escribir ""
	FinPara
	
FinAlgoritmo
