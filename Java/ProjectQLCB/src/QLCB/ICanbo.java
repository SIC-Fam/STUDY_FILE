/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package QLCB;
import java.awt.Frame;
import java.sql.*;

/**
 *
 * @author Lunatic
 */
public interface ICanbo{
    Connection getCon();
    void insertCB( int SoTK, String Hoten, String GT, String Diachi, int Luong);
//    void editCB(int SoTK, String Hoten, String GT, String Diachi, int Luong);
//    void deleteCB(int SoTK);
}
