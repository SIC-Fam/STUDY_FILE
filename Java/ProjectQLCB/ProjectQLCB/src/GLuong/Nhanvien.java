//package GLuong;
//
//public class Nhanvien extends Person {
//    private String Diachi;
//    private int Luong;
//
//    public Nhanvien() {
//    }
//
//    public Nhanvien(int MaNV, String HoTen, String Diachi, int Luong) {
//        super(MaNV, HoTen);
//        this.Diachi = Diachi;
//        this.Luong = Luong;
//    }
//
//    public String getDiachi() {
//        return Diachi;
//    }
//
//    public void setDiachi(String diachi) {
//        Diachi = diachi;
//    }
//
//    public int getLuong() {
//        return Luong;
//    }
//
//    public void setLuong(int luong) {
//        Luong = luong;
//    }
//
//
//}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package GLuong;

/**
 *
 * @author PC
 */
public class Nhanvien extends Person {
    private String Diachi;
    private double Luong;
    
    public Nhanvien(int MaNV, String Hoten, String Diachi, double Luong){
        super(MaNV, Hoten);
        this.Diachi = Diachi;
        this.Luong = Luong;
    }

    public String getDiachi() {
        return Diachi;
    }

    public void setDiachi(String Diachi) {
        this.Diachi = Diachi;
    }

    public double getLuong() {
        return Luong;
    }

    public void setLuong(double Luong) {
        this.Luong = Luong;
    }
    
    
}