/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lab28;

/**
 *
 * @author Lunatic
 */
public class SinhVien {
    private String MaSV;
    private String HoTen;
    private String MaLop;
    private double DiemLyThuyet;
    private double DiemThucHanh;

    public SinhVien(String MaSV, String HoTen, String MaLop, double DiemLyThuyet, double DiemThucHanh) {
        this.MaSV = MaSV;
        this.HoTen = HoTen;
        this.MaLop = MaLop;
        this.DiemLyThuyet = DiemLyThuyet;
        this.DiemThucHanh = DiemThucHanh;
    }

    public SinhVien(String MaSV) {
        this.MaSV = MaSV;
    }

    public String getMaSV() {
        return MaSV;
    }

    public void setMaSV(String MaSV) {
        this.MaSV = MaSV;
    }

    public String getHoTen() {
        return HoTen;
    }

    public void setHoTen(String HoTen) {
        this.HoTen = HoTen;
    }

    public String getMaLop() {
        return MaLop;
    }

    public void setMaLop(String MaLop) {
        this.MaLop = MaLop;
    }

    public double getDiemLyThuyet() {
        return DiemLyThuyet;
    }

    public void setDiemLyThuyet(double DiemLyThuyet) {
        this.DiemLyThuyet = DiemLyThuyet;
    }

    public double getDiemThucHanh() {
        return DiemThucHanh;
    }

    public void setDiemThucHanh(double DiemThucHanh) {
        this.DiemThucHanh = DiemThucHanh;
    }

    @Override
    public boolean equals(Object obj) {
        return this.MaSV.equalsIgnoreCase(((SinhVien)obj).MaSV);
    }
    
    public double diemTB(){
        double DiemTB;
        DiemTB = (DiemLyThuyet+DiemThucHanh)/2;
        return DiemTB;
    }
    
    public String ketQua() {
        if(diemTB()>=5){
            return "Đậu";
        } else {
            return "Rớt";
        }
    }
}
