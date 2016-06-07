/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package executepart2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author dana
 */
public class query {
    Connection connection;
    DataBaseConnection database = new DataBaseConnection();
    PreparedStatement statement;
    Statement stmt;
    ResultSet resultSet;
    
    public ArrayList<Mahasiswa> nimmsh(String nim) throws SQLException, Exception{
        ArrayList<Mahasiswa> mhs = new ArrayList<Mahasiswa>();
        Mahasiswa id=new Mahasiswa();
        
        try{
            connection = database.getConnection();
            statement = connection.prepareStatement("SELECT * FROM mahasiswa where nim = '"+nim+"'");
            resultSet = statement.executeQuery();
            
            while(resultSet.next()){
                id.setNim(resultSet.getString("nim"));
                id.setNama(resultSet.getString("nama"));
                id.setProdi(resultSet.getString("prodi"));
                mhs.add(id);
            }
        }
        catch(SQLException ig){
            System.out.println("error");
        }
        return mhs;
    }
    
    public ArrayList<MataKuliah> makul() throws SQLException{
        ArrayList<MataKuliah> mhs = new ArrayList<MataKuliah>();
       
        
        try{
            connection = database.getConnection();
            statement = connection.prepareStatement("SELECT * FROM matakuliah");
            resultSet = statement.executeQuery();
            
            while(resultSet.next()){
                MataKuliah id=new MataKuliah();
                id.setKode(resultSet.getString("kode"));
                id.setNama(resultSet.getString("nama"));
                id.setSks(resultSet.getString("sks"));
                mhs.add(id);
            }
        }
        catch(SQLException ig){
            System.out.println("error");
        }
        return mhs;
    }
    
    public ArrayList<Kelas> keles() throws SQLException{
        ArrayList<Kelas> mhs = new ArrayList<Kelas>();
        try{
            connection = database.getConnection();
            statement = connection.prepareStatement("SELECT * FROM kelas");
            resultSet = statement.executeQuery();
            while(resultSet.next()){
                Kelas id=new Kelas();
                id.setKode(resultSet.getString("kode"));
                id.setDosen(resultSet.getString("dosen"));
                mhs.add(id);
            }
        }
        catch(SQLException ig){
            System.out.println("error");
        }
        return mhs;
    }
    
    public ArrayList<sks> sksa(String a,String b,String c) throws SQLException{
        ArrayList<sks> mhs = new ArrayList<sks>();
        try{
            connection = database.getConnection();
            statement = connection.prepareStatement("INSERT INTO krs (nim,nama,sks) VALUES ('"+a+"','"+b+"','"+c+"')");
            resultSet = statement.executeQuery();
            while(resultSet.next()){
                sks id=new sks();
                id.setNim(resultSet.getString("nim"));
                id.setNama(resultSet.getString("nama"));
                id.setSks(resultSet.getString("sks"));
                mhs.add(id);
            }
            
        }
        catch(SQLException ig){
            System.out.println("error");
        }
        return mhs;
    }
    
    public void closeConn(){
        if(resultSet!=null||statement!=null||connection!=null){
            try{
                resultSet.close();
            }
            catch (SQLException ig){
                
            }
        }
    }
    
    public ArrayList<sks> showadmin() throws SQLException{
        ArrayList<sks> mhs = new ArrayList<sks>();
       
        
        try{
            connection = database.getConnection();
            statement = connection.prepareStatement("SELECT * FROM krs");
            resultSet = statement.executeQuery();
            
            while(resultSet.next()){
                sks id=new sks();
                id.setNim(resultSet.getString("nim"));
                id.setNama(resultSet.getString("nama"));
                id.setSks(resultSet.getString("sks"));
                mhs.add(id);
            }
        }
        catch(SQLException ig){
            System.out.println("error");
        }
        return mhs;
    }
    
    public ArrayList<sks> hapusadmin(String no) throws SQLException{
        ArrayList<sks> mhs = new ArrayList<sks>();
       
        
        try{
            connection = database.getConnection();
            statement = connection.prepareStatement("DELETE FROM krs WHERE nim='"+no+"'");
            resultSet = statement.executeQuery();
            while(resultSet.next()){
                sks id=new sks();
                id.setNim(resultSet.getString("nim"));
                id.setNama(resultSet.getString("nama"));
                id.setSks(resultSet.getString("sks"));
                mhs.add(id);
            }
        }
        catch(SQLException ig){
            System.out.println("error");
        }
        return mhs;
    }
    
    public ArrayList<lighttambahan>masuklightning(String a,String b) throws SQLException{
        ArrayList<lighttambahan> mhs = new ArrayList<lighttambahan>();
       
        
        try{
            connection = database.getConnection();
            statement = connection.prepareStatement("INSERT INTO lightning (nim,isi) VALUES ('"+a+"','"+b+"')");
            resultSet = statement.executeQuery();
            while(resultSet.next()){
                lighttambahan id=new lighttambahan();
                id.setNim(resultSet.getString("nim"));
                id.setIsi(resultSet.getString("isi"));
                mhs.add(id);
            }
        }
        catch(SQLException ig){
            System.out.println("error");
        }
        return mhs;
    }
    
    public ArrayList<lighttambahan>showlightning(String a) throws SQLException{
        ArrayList<lighttambahan>li=new ArrayList<lighttambahan>();
        try{
            connection=database.getConnection();
            statement=connection.prepareStatement("SELECT * FROM lightning WHERE nim='"+a+"'");
            resultSet=statement.executeQuery();
            while(resultSet.next()){
                lighttambahan b=new lighttambahan();
                b.setNim(resultSet.getString("nim"));
                b.setIsi(resultSet.getString("isi"));
                li.add(b);
            }
        }
        catch(SQLException ez){
            System.out.println("oror");
        }
        return li;
    }
    
    public ArrayList<lighttambahan>hapuslightning(String a) throws SQLException{
        ArrayList<lighttambahan>li=new ArrayList<lighttambahan>();
        try{
            connection=database.getConnection();
            statement=connection.prepareStatement("DELETE FROM lightning WHERE nim='"+a+"'");
            resultSet=statement.executeQuery();
            while(resultSet.next()){
                lighttambahan b=new lighttambahan();
                b.setNim(resultSet.getString("nim"));
                b.setIsi(resultSet.getString("isi"));
                li.add(b);
            }
        }
        catch(SQLException ez){
            System.out.println("oror");
        }
        return li;
    }
    
}
