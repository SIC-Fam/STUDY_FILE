/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package qlcb2;

import javax.swing.JFrame;

/**
 *
 * @author DELL
 */
public class Test_insertCB {
    static QLCB qlcb;
    public static void main(String[] args) {
        qlcb = new QLCB();
        qlcb.getCon();
        new GuiInsertCB().setVisible(true);
        
    }
    public static void doInsertCB(JFrame j,int soTk, String hoTen, String gt, String diaChi, int luong){
        
        qlcb.insertCB(j, soTk, hoTen, gt, diaChi, luong);
        
    }
    
}
