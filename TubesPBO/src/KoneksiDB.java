/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ASUS
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class KoneksiDB {
    private static Connection konekSQL;
    public static Connection koneksi() throws SQLException{
        try{
            String url = "jdbc:mysql://localhost:3306/rumahkita?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
            String user = "root";
            String pass = "";

            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            konekSQL = DriverManager.getConnection(url, user, pass);
        }catch (SQLException e){
            System.out.println("Koneksi Database Gagal"+e.getMessage());
        }
        return konekSQL;
    }
}

