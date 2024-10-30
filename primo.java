import java.util.Scanner;

public class primo{
    
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Ingrese cantidad de columnas: ");
        int columnas = sc.nextInt();
        
        System.out.print("Ingrese cantidad de filas: ");
        int filas = sc.nextInt();
        
        int[][] matriz = new int[filas][columnas];
        
        // Llenar la matriz
        for (int i = 0; i < filas; i++) {
            for (int j = 0; j < columnas; j++) {
                System.out.print("Ingrese un número para la fila " + (i + 1) + " columna " + (j + 1) + ": ");
                matriz[i][j] = sc.nextInt();
            }
        }
        
        // Procesar cada elemento de la matriz
        for (int i = 0; i < filas; i++) {
            for (int j = 0; j < columnas; j++) {
                int numero = matriz[i][j];
                System.out.println("Para el número " + numero + ", el resultado es:");
                esPrimo(numero);
                calcularFactorial(numero);
                System.out.println();
            }
        }
        
        sc.close();
    }
    
    // Función para verificar si un número es primo
    public static void esPrimo(int n) {
        boolean primo = true;
        
        if (n <= 1) {
            primo = false;
        } else {
            for (int i = 2; i <= n - 1; i++) {
                if (n % i == 0) {
                    primo = false;
                    break;
                }
            }
        }
        
        if (primo) {
            System.out.println("Es un número primo");
        } else {
            System.out.println("No es un número primo");
        }
    }
    
    // Función para calcular el factorial de un número
    public static void calcularFactorial(int n) {
        long resultado = 1;
        
        if (n == 1) {
            System.out.println("La factorial de 1 es 1");
        } else {
            for (int i = 1; i <= n; i++) {
                resultado *= i;
            }
            System.out.println("El resultado del factorial es " + resultado);
        }
    }
}
