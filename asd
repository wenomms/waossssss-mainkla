import java.util.*;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.logging.Logger;
import java.util.logging.Level;
/**
 *
 * @author ivand
 */
public class Workarchiv {
    public static void main(String[] args) {
        
        int opcion;
        do{
        Scanner sc = new Scanner(System.in);
        System.out.println("Elije una opción");
        System.out.println("1. salida");
        System.out.println("2. cargar datos");
        System.out.println("3. promedio del estudiante");
        System.out.println("4. promedio del semestre");
        System.out.println("5. promedio de la carrera");
        
        opcion = sc.nextInt();
        File Nombre_Carrera = new File("Datos_carrera");
        File Nombre_Estudiantes = new File("estudiantes");
        File Nombre_asignatura = new File("Datos_asignatura");
        File cantidad_notas = new File("Datos_notas");
        switch(opcion){
            
            case 2:
                int popcion;
                do{
                Scanner two= new Scanner(System.in);
                System.out.println("Elije una de las siguientes opciones");
                System.out.println("1. cargar datos del estudiante");
                System.out.println("2. cargar datos de la carrera");
                System.out.println("3. cargar de una asignatura");
                System.out.println("4. cargar notas");
                System.out.println("5. salir");
                
                popcion= two.nextInt();
                switch(popcion){
                    
                    case 1:
            Scanner archivo_s = new Scanner(System.in);
            
            if(Nombre_Carrera.exists()){
                System.out.println("Registrese:");
                System.out.println("codigo:");
                String codigo_s = archivo_s.nextLine();
                System.out.println("Nombre:");
                String Nombre_s = archivo_s.nextLine();
                System.out.println("correo:");
                String correo = archivo_s.nextLine();
                System.out.println("Numero de celular:");
                String Numero = archivo_s.nextLine();
                System.out.println("identificador de carrera:");
                String identificador_carrera = archivo_s.nextLine();
            
            try {
                
                FileWriter fw=new FileWriter(Nombre_Estudiantes, true);
                fw.write("codigo \t Nombre \t\t\t Correo \t\t\t numero \t\t\t identificador de carrera \n");
                fw.write(codigo_s + "\t\t\t " + Nombre_s + "\t\t\t " + correo + "\t\t\t" + Numero + "\t\t\t" + identificador_carrera +"\n");
                fw.close();
            } catch (IOException ex) {
                System.out.println("No existe la carpeta sobre los datos de la carrera");
            }
        }
                        
                            break;
                    case 2:
            Scanner archivo = new Scanner(System.in);
            if(!Nombre_Carrera.exists()){
            try {
                System.out.println("Registrese:");
                System.out.println("identificador de carrera:");
                String identificador_carrera = archivo.nextLine();
                System.out.println("Nombre de la carrera:");
                String Nombre = archivo.nextLine();
                System.out.println("creditos totales de la carrera:");
                String creditos = archivo.nextLine();
                System.out.println("modalidad:");
                String modalidad = archivo.nextLine();
                System.out.println("Nombre de la facultad:");
                String Nombre_Facultad = archivo.nextLine();
                FileWriter fw=new FileWriter(Nombre_Carrera, true);
                fw.write("Indentificador de carrera \t Nombre \t\t\t Creditos \t\t\t modalidad \t\t\t Nombre de la facultad \n");
                fw.write(identificador_carrera + "\t\t\t " + Nombre + "\t\t\t " + creditos + "\t\t\t" +modalidad + "\t\t\t"+Nombre_Facultad +"\n");
                fw.close();
            } catch (IOException ex) {
                Logger.getLogger(Workarchiv.class.getName()).log(Level.SEVERE, null, ex);
            }
            }else{
                System.out.println("La carrera ya esta cargada");
            } 
            break;
            
            case 3:
            Scanner ar = new Scanner(System.in);
            
            if(!Nombre_Estudiantes.exists()){
                System.out.println("Registrese:");
                System.out.println("identificador de asignatura:");
                String identificador_asignatura = ar.nextLine();
                System.out.println("Nombre de las asignatura:");
                String Nombre_asignatur = ar.nextLine();
                System.out.println("Creditos de las asignatura:");
                String creditos_asignatura = ar.nextLine();
                System.out.println("Intensidad horaria:");
                String Intensidad_horaria = ar.nextLine();
            
            try {
                
                FileWriter fw=new FileWriter(Nombre_asignatura, true);
                fw.write("identificador_asignatura \t Nombre de la asignatura \t\t\t Creditos de las asignatura \t\t\t Intensidad horaria \n");
                fw.write(identificador_asignatura + "\t\t\t " + Nombre_asignatur + "\t\t\t " + creditos_asignatura + "\t\t\t" + Intensidad_horaria + "\n");
                fw.close();
            } catch (IOException ex) {
                System.out.println("No existe la carpeta sobre los datos de la carrera");
            }
        }
            break;
            
            case 4:
            Scanner arc = new Scanner(System.in);
            
            if(!Nombre_Estudiantes.exists()){
                System.out.println("Registrese:");
                System.out.println("codigo estudiante:");
                String codigo_estudiante = arc.nextLine();
                System.out.println("identificador de la asignatura:");
                String identificador_asignatura = arc.nextLine();
                System.out.println("Cantidad de notas:");
                String cantidad_notass = arc.nextLine();
                System.out.println("Notas:");
                String Notas = arc.nextLine();
            
            try {
                
                FileWriter fw=new FileWriter(cantidad_notas, true);
                fw.write("identificador_asignatura \t Nombre de la asignatura \t\t\t Creditos de las asignatura \t\t\t Intensidad horaria \n");
                fw.write(codigo_estudiante + "\t\t\t " + identificador_asignatura + "\t\t\t " + cantidad_notass + "\t\t\t" + Notas + "\n");
                fw.close();
            } catch (IOException ex) {
                System.out.println("No existe la carpeta sobre los datos de la carrera");
            }
        }
                break;
            }
                }while( popcion!=5);
        break;
                
            case 3:
                break;
            case 4:
                break;
            case 5:
                break;
            }
        } while(opcion!=1);
        System.out.println("Hasta luego");
    }
}
