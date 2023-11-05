/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lab28;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Lunatic
 */
public class DanhSachSinhVien implements Serializable{
    private List<SinhVien> ds;
    
    public DanhSachSinhVien(){
        ds=new ArrayList<SinhVien>();
    }

    public boolean themSinhVien(SinhVien sv) {
        if(ds.contains(sv)){
            return false;
        } 
        ds.add(sv);
        return true;
    }
    
    public SinhVien getSinhVien(int i) {
        if(i>=0 && i<ds.size())
            return ds.get(i);
        return null;
    }
    
    public int tongSinhVien(){
        return ds.size();
    }
    
    public SinhVien timKiem(String MaSV) throws Exception{
        SinhVien sv = new SinhVien(MaSV);
        if(ds.contains(sv))
            return ds.get(ds.indexOf(sv));
        return null;
    }
    
    public boolean xoaSinhVien(String MaSV) throws Exception {
        SinhVien sv = new SinhVien(MaSV);
        if(ds.contains(sv))
        {
            ds.remove(sv);
            return true;
        }
        return false;
    }
    
    public boolean suaThongTinSinhVien(String MaSV, SinhVien svVersion2) throws Exception {
        SinhVien sv = new SinhVien(MaSV);
        if(ds.contains(sv)){
            sv=ds.get(ds.indexOf(sv));
            sv.setHoTen(svVersion2.getHoTen());
            sv.setDiemLyThuyet(svVersion2.getDiemLyThuyet());
            sv.setDiemThucHanh(svVersion2.getDiemThucHanh());
            return true;
        }
        return false;
    }
    
}
