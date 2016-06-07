/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package executepart2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import oracle.jdbc.pool.OracleDataSource;

/**
 *
 * @author dana
 */
public class DataBaseConnection {
    private Connection connection;
    String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe";
    String userid = "HR";
    String password = "145314103";

    public DataBaseConnection(){
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            connection = DriverManager.getConnection(jdbcUrl, userid, password);
            System.out.println("Sukses Terkoneksi");
        }
        catch(Exception broke){
            System.out.println("Gagal Terkoneksi");
        }
    }
    
    public boolean isConnected(){
        if(connection != null){
            return true;
        }
        else{
            return false;
        }
    }
    
    public boolean getClosed() throws SQLException{
        if(isConnected()){
            connection.close();
            connection=null;
            return true;
        }
        else{
            return false;
        }
    }
    
    public String getJdbcURL(){
        return jdbcUrl;
    }
    
    public void setJdbcURL(String a){
        this.jdbcUrl=a;
    }
    
    public String getUser(){
        return userid;
    }
    
    public String getPassword(){
        return password;
    }
    
    public void setPassword(String a){
    this.password=password;
}
    
    public Connection getConnection(){
        return connection;
    }
    
    public void setConn(Connection a){
        this.connection=a;
    }
    
    public static void main(String[] args) {
        DataBaseConnection conn=new DataBaseConnection();
    }
    
}