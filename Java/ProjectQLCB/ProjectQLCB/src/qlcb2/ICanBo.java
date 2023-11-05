/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package qlcb2;

import java.sql.Connection;
import javax.swing.JFrame;

/**
 *
 * @author DELL
 */
public interface ICanBo {
    Connection getCon();
    void insertCB(JFrame j,int soTk, String hoTen, String gt, String diaChi, int luong);
    void getCBbyMa(JFrame j, int soTk);
}
