import java.util.Scanner;

public class matriz_varios_ciclos {

    // Función para ordenar la matriz
    public static int[][] ordenarMatriz(int[][] a, int filas, int columnas, int s) {
        int t = filas * columnas;
        int[] b = new int[t];
        int x = 0;

        // Pasar los elementos de la matriz a un arreglo unidimensional
        for (int i = 0; i < filas; i++) {
            for (int j = 0; j < columnas; j++) {
                b[x] = a[i][j];
                x++;
            }
        }

        // Ordenar de forma ascendente o descendente según la opción seleccionada
        if (s == 1) {
            System.out.println("Ascendente");
            for (int i = 0; i < t; i++) {
                for (int j = i + 1; j < t; j++) {
                    if (b[i] > b[j]) {
                        int temp = b[i];
                        b[i] = b[j];
                        b[j] = temp;
                    }
                }
            }
        } else if (s == 2) {
            System.out.println("Descendente");
            for (int i = 0; i < t; i++) {
                for (int j = i + 1; j < t; j++) {
                    if (b[i] < b[j]) {
                        int temp = b[i];
                        b[i] = b[j];
                        b[j] = temp;
                    }
                }
            }
        }

        // Pasar los elementos del arreglo unidimensional de vuelta a la matriz
        x = 0;
        for (int i = 0; i < filas; i++) {
            for (int j = 0; j < columnas; j++) {
                a[i][j] = b[x];
                x++;
            }
        }

        return a;
    }

    // Algoritmo principal
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Escriba un tamaño para las filas:");
        int filas = scanner.nextInt();
        System.out.println("Escriba un tamaño para las columnas:");
        int columnas = scanner.nextInt();

        int[][] a = new int[filas][columnas];

        // Llenar la matriz con valores
        for (int i = 0; i < filas; i++) {
            for (int j = 0; j < columnas; j++) {
                System.out.println("Ingrese un valor para la fila #" + (i + 1) + " con columna #" + (j + 1) + ":");
                a[i][j] = scanner.nextInt();
            }
        }

        // Mostrar menú de opciones
        System.out.println("Seleccione el tipo de ordenamiento:");
        System.out.println("1. Ascendente");
        System.out.println("2. Descendente");
        int opcion = scanner.nextInt();

        if (opcion == 1 || opcion == 2) {
            a = ordenarMatriz(a, filas, columnas, opcion);
        } else {
            System.out.println("Opción no válida. No se realizó ningún cambio.");
        }

        // Imprimir la matriz ordenada
        System.out.println("Matriz ordenada:");
        for (int i = 0; i < filas; i++) {
            for (int j = 0; j < columnas; j++) {
                System.out.print(a[i][j] + " ");
            }
            System.out.println();
        }

        scanner.close();
    }
}
