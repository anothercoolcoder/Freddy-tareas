import java.util.Scanner;

public class prueba{
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);

        System.out.println("Ingrese la cantidad de columnas");
        int columnas = sc.nextInt();

        System.out.println("Ingrese la cantidad de filas");
        int filas = sc.nextInt();

        int[][] matriz = new int[filas][columnas];

        for(int i= 0; i <filas; i++){
            for(int j = 0; j < columnas; j++) {
                System.out.println("Ingrese un numero para la fila " + (i + 1) + " columna " + (j+1) + ": ");
                matriz[i][j] = sc.nextInt();
            }
        }

       for(int i= 0; i<filas; i++ ){
            for(int j = 0; j<columnas; j++) {
                int numero = matriz[i][j];
                System.out.println("Para el numero " + numero + ", el resultado es: ");
                esPrimo(numero);
                calcularFactorial(numero);
                System.out.println();
            }
        }
        sc.close();
    }

    public static void esPrimo(int n){
        boolean primo = true;

        if (n <= 1) {
            primo = false;

        } else {
            for(int i = 2; i <= n -1; i++){
                if (n%i ==0) {
                    primo = false;
                    break;
                }
            }
        }
        if (primo){
            System.out.println("Es un numero primo");
        } else {
            System.out.println("No es un numero primo");
        }
    }
    public static void calcularFactorial(int n) {
        long resultado = 1;
        
        if(n==1){
            System.out.println("La factorial de 1 es 1");
        } else {
            for(int i = 1; i <= n; i++) {
                resultado += i;
            }
            System.out.println("El resultado del factorial es " + resultado);
        }
        
    }
}