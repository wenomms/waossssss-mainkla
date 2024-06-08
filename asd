import java.util.*;
import java.io.File;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author ivand
 */
public class Workarchiv {
    	Scanner datos = new Scanner(System.in);
        
    public static void main(String[] args) {
    int opcion;
	Scanner sc = new Scanner(System.in);
        String datos;
        datos = sc.nextLine();
        do{
            System.out.println("Menu de opciones:");
            System.out.println("1. salir ");
            System.out.println("2. Nota definitiva de la asignatura: ");
            System.out.println("3. Nota definitiva del semestre:");
            System.out.println("4. Promedio de la carrera");
            opcion = sc.nextInt();
            sc.nextLine();
            
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
                String namefile="Estudiante";
                File archivo= new File(namefile);
                if(archivo.exists()){
        
        }else{
                try{
                    archivo.createNewFile();
                }catch(IOExeption){
                    System.out.println("Error al crear el archivo");
                }
                        }
            	System.out.println("ingrese el codigo:");
            	String codigo = sc.nextLine();
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

    }
