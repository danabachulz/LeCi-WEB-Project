package KRS;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Koneksi {
        String host = "localhost";
        String username = "HR";
        String password = "145314103";
        String port = "1521";
        String dbName = "xe";
    
        public Connection getConnection(){
            Connection conn = null;
        try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                String url ="jdbc:oracle:thin:@"+host+":"+port+":"+dbName;
                conn=DriverManager.getConnection(url,username,password);
                
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(Koneksi.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(Koneksi.class.getName()).log(Level.SEVERE, null, ex);
            }
            return conn;
        }
}
