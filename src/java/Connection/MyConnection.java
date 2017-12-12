/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connection;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class MyConnection {
    private static Connection con = null;
    public static Connection getConnection(){
        try{
           Class.forName("com.mysql.jdbc.Driver");
           con = DriverManager.getConnection("jdbc:mysql://node45003-ps05147ass.jelastic.skali.net/shopper","root","KFXykv35893");
           return con;
        }catch(Exception e){
            return null;
        }
    
    }
    
//    private static String URL;
//    private static String USER;
//    private static String PASSWOR D;
// 
//    public static Connection getConnection() {
//        con = null;
//        Properties properties = new Properties();
//        try {
//            properties.load(new FileReader(new File("info.properties")));
//            URL = properties.getProperty("jdbc:mysql://node45001-ps05147.jelastic.skali.net/shopper");
//            USER = properties.getProperty("root");
//            PASSWORD = properties.getProperty("lN660OBrUx");
//            // driver register
//            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
//            con = (Connection) DriverManager.getConnection(URL, USER, PASSWORD);
//        } catch (IOException | SQLException ex) {
//            System.out.println(ex);
//        }
//        return (con);
//    }
    
//    public static void main(String[] args) {
//        
//            Connection c = MyConnection.getConnection();
//            if(c==null){
//                System.out.println("wrong");
//            }else{
//                System.out.println("right");
//            }
//    }
}
