
import java.util.*;
import java.lang.*;
import java.io.*;
import java.util.Scanner;

// The main method must be in a class named "Main".
class Main {
    	Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
	Scanner sc = new Scanner(System.in);
int opcion=0;
        do{
            System.out.println("Menu de opciones:");
            System.out.println("1. salir ");
            System.out.println("2. Cargar archivos planos de texto: ");
            System.out.println("3. Crear y Almacenar en archivos planos de texto:");
            System.out.println("4. Calcular la nota definitiva de un estudiante y el promedio de las notas que tenga.");
            System.out.println("5. Calcular el promedio del semestre para un estudiante");
            System.out.println("6. Calcular el promedio general del semestre para todos los estudiantes de una carrera.");
            System.out.print("Seleccione una opcion: ");
     opcion = sc.nextInt();
        switch (opcion){
            case 1 :
                salir();
                break;
           case 2 :
                cargar() ;
                break;
           case 3 :
                crear () ;
                break;
          case 4 :
                definitiva();
                break;
          case 5 :
                promedio();
                break;
         case 6 :
                general();
                break;
                 default:
                System.out.println("opcion no valida ");
        }
            
        }while (opcion !=1) ;
        System.out.println("programa terminado");
            
        }
    
        static void salir(){ 
            System.out.println("hasta luego");
            }  
        static void cargar(){ 
            System.out.println("estos son los archivos:");
            	Scanner sc = new Scanner(System.in);
        }
        static void crear(){ 
            System.out.println("inserte los datos");
            	Scanner sc = new Scanner(System.in);
            	System.out.println("ingrese el codigo:");
            	int codigo = sc.nextInt();
            	System.out.println("ingrese el nombre:");
            	int nombre = sc.nextInt();
            	System.out.println("ingrese el correo:");
            	int correo = sc.nextInt();
            	System.out.println("ingrese el num de celular:");
            	int celular = sc.nextInt();
            	System.out.println("ingrese la carrera:");
            	int carrera = sc.nextInt();            	
            }           
        static void definitiva(){ 
            System.out.println("hello 4");
            	Scanner sc = new Scanner(System.in);
            }  
        static void promedio(){ 
            System.out.println("hello 5");
            	Scanner sc = new Scanner(System.in);
            }  
       static void general(){ 
            System.out.println("hello 6");
           	Scanner sc = new Scanner(System.in);
            }  
    
    }
