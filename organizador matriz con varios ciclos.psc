Funcion ordenar_r = ordenar(n, f, c, s)
	si s = 1
		escribir "ascendente"
		definir temp Como Entero
		para i = 1 hasta f
			para j = 1 hasta c
				para u =  i hasta f
					para k = 1 hasta c
						Si (u>i) o (u = i y k >j) Entonces
							si n[i,j) > n(u,k) Entonces
								temp = n(i,j)
								n(i,j) = n(u,k)
								n(u,k) = temp
							FinSi
						Fin Si
					FinPara
				fin para
			FinPara
		FinPara
	sino 
		si s = 2 Entonces
			escribir "decendente"
			definir temp Como Entero
			para i = 1 hasta f
				para j = 1 hasta c
					para u =  i hasta f
						para k = 1 hasta c
							Si (u>i) o (u = i y k >j) Entonces
								si n[i,j) < n(u,k) Entonces
									temp = n(i,j)
									n(i,j) = n(u,k)
									n(u,k) = temp
								FinSi
							Fin Si
						FinPara
					fin para
				FinPara
			FinPara
		FinSi
	FinSi
	
FinFuncion

Algoritmo organizar
	definir filas, columnas, a,s Como Entero
	definir metodo Como Caracter
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
		ordenar_r= ordenar(a, filas, columnas, s)
	SiNo
		si opcion = 2 Entonces
			s = 2
			ordenar_v = ordenar(a, filas, columnas, s)
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
