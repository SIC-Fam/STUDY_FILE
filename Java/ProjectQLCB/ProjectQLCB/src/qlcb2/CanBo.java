/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package qlcb2;

/**
 *
 * @author DELL
 */
public class CanBo {
    private int soTk;
    private String hoTen;
    private String gt;
    private String diaChi;
    private int luong;
    
    public CanBo(){}

    public CanBo(int soTk, String hoTen, String gt, String diaChi, int luong) {
        this.soTk = soTk;
        this.hoTen = hoTen;
        this.gt = gt;
        this.diaChi = diaChi;
        this.luong = luong;
    }

    public int getSoTk() {
        return soTk;
    }

    public void setSoTk(int soTk) {
        this.soTk = soTk;
    }

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public String getGt() {
        return gt;
    }

    public void setGt(String gt) {
        this.gt = gt;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public int getLuong() {
        return luong;
    }

    public void setLuong(int luong) {
        this.luong = luong;
    }
    
    
}
