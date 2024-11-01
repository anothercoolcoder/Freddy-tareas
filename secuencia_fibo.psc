Funcion Operacion <- Fibonacci (factor)
	si factor <= 1 Entonces
		Operacion = 1
	SiNo
		a = 1 
		b = 1
		c = 3
		Mientras i <= factor Hacer
			Operacion = a + b
			a = b
			b = Operacion
			i = i + 1
		FinMientras
	FinSi
Fin Funcion

Algoritmo secuencia_fibo
	definir n Como Entero
	
	escribir "ingrese un valor para n"
	leer n
	
	Operacion = Fibonacci(n)
	escribir "El termino ", n, " de la sucesion de fibonacci es: ", Operacion

FinAlgoritmo
