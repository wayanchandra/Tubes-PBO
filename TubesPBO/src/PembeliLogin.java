/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ASUS
 */
public class PembeliLogin {
    private static String p_nik;
    private static String p_nama;
    private static String p_email;
    private static String p_telpon;
    private static String p_alamat;
    private static String p_password;
    
    public void setp_nik(String p_nik) {
        this.p_nik = p_nik;
    }
    
    public static String getp_nik() {
        return p_nik;
    }
    
    public void setp_nama(String p_nama) {
        this.p_nama = p_nama;
    }
    
    public static String getp_nama() {
        return p_nama;
    }
    
    public void setp_email(String p_email) {
        this.p_email = p_email;
    }
    
    public String getp_email() {
        return p_email;
    }
    
    public void setp_telepon(String p_telpon) {
        this.p_telpon = p_telpon;
    }
    
    public static String getp_telepon() {
        return p_telpon;
    }
    
    public void setp_alamat(String p_alamat) {
        this.p_alamat = p_alamat;
    }
    
    public static String getp_alamat() {
        return p_alamat;
    }
    
    public void setp_password(String p_password) {
        this.p_password = p_password;
    }
 
    public static String getp_password() {
        return p_password;
    }
}
