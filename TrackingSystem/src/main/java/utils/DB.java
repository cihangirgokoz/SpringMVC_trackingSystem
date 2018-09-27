package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import java.sql.PreparedStatement;

public class DB {
    
   final private String driver = "com.mysql.jdbc.Driver";
   final private String url = "jdbc:mysql://localhost/";
   final private String encode = "?useUnicode=true&characterEncoding=utf-8";
   // database a��l�rken t�rk�e karakter deste�i ile a��ls�n.
   
   private String dbName = "trackingsystem";
   private String userName = "root";
   private String userPass = "";
   
   private Connection con = null;
   private Statement st = null;
   private PreparedStatement pst = null;

    public DB() {
    }
   
    // farkl� databeselere ba�lanabilmek i�in kurucu methoda parametre g�nderilir.
    public DB(String dbName, String userName, String userPass) {
        this.dbName = dbName;
        this.userName = userName;
        this.userPass = userPass;
    }
    
    // ba�lan methodu
    public Statement baglan() {
        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url+dbName+encode, userName, userPass);
            st = con.createStatement();
            System.out.println("Baglanti Basarili");
        } catch (Exception e) {
            System.err.println("Baglanti Hatasi : " +  e);
        }
        return st;
    }
    
    
    // prepared statement
    public PreparedStatement pBaglan(String query) {
    	try {
            Class.forName(driver);
            con = DriverManager.getConnection(url+dbName+encode, userName, userPass);
            pst = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            System.out.println("Baglanti Basarili");
        } catch (Exception e) {
            System.err.println("Baglanti Hatasi : " +  e);
        }
    	return pst;
    }
    
   
   
       
}