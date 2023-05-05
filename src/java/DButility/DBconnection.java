package DButility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Acer
 */
public class DBconnection {
    private static final String connectionURL = "jdbc:mysql://localhost:3306/hotelmgmt";
    private static final String driver="com.mysql.jdbc.Driver";
    private static final String username="root";
    private static final String password="";
    private static Connection conn = null;   

    //register and load db driver
   //create a method to do so: register driver and create connection 
    public static Connection openConnection(){      
        try{
            Class.forName(driver);
            conn = DriverManager.getConnection(connectionURL, username, password);
 
        }catch (Exception e){
            
        }        
        return conn;
    }  
    
    public static void closeConnection(){
        try {
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(DBconnection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
