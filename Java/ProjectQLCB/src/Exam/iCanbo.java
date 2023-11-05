/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Exam;

import java.awt.Frame;
import java.sql.*;

/**
 *
 * @author Lunatic
 */
public interface iCanbo {

    Connection getCon();

    void insertCB( int SoTK, String Hoten, String GT, String Diachi, int Luong);
}
