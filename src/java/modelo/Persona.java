
package modelo;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
public class Persona {
    
    //atributos de la clase
   String dui;
   String apellidos;
   String nombres;
   
   //Constructor vacio de la clase persona
   PreparedStatement ps;
   Connection cnn;
   Statement state;
   ResultSet result;
    
    public Persona(){
    
       try {
           Class.forName("com.mysql.jdbc.Driver");//Driver de la base de datos
           cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_recurso_humano?zeroDateTimeBehavior=convertToNull","root","");//url de la db, user, pass
                   } catch (ClassNotFoundException ex) {
           Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
       } catch (SQLException ex) {
           Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
       }
    }

   
   public Persona(String dui, String apellidos, String nombres){
        this.dui = dui;
        this.apellidos = apellidos;
        this.nombres = nombres;
    }
   public boolean insertarDatos(){
       try{
           String miQuery = "INSERT INTO tb_persona VALUES('" + dui + "', '" + apellidos + "', '"+ nombres + "');";
          int estado = 0;
           state = cnn.createStatement();
           estado = state.executeUpdate(miQuery);
           if (estado == 1) {
               return  true;
               
           }
       }
       catch (SQLException ex){
           Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
       }
       
       return false;   
    
    } 
   
     public ArrayList<Persona> consultarRegistros(){
        ArrayList<Persona> person = new ArrayList();
        try {
            String miQuery = "Select * from tb_persona";
            state = cnn.createStatement(); 
            result = state.executeQuery(miQuery); // ejecuta sentencia SQL
            while(result.next()){
                
                person.add(new Persona(result.getString("dui_persona"), result.getString("apellido_persona"),result.getString("nombre_persona")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE,null,ex);
        }
        return person;
     }
     
  

   public String getDui(){
   
       return dui;
   }
   public void   setDui(String dui){
   
       this.dui = dui;
   }

   public String getApellidos(){
   
       return apellidos;
   }
   public void   setApellidos(String apellidos){
   
       this.apellidos = apellidos;
   }
 
   public String getNombres(){
   
       return nombres;
   }
   public void   setNombres(String nombres){
   
       this.nombres = nombres;
   }
}
