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
public class QLCB implements ICanbo {

    public Connection conn = null;

    @Override

    public Connection getCon() {
        String DB_URL = "jdbc:mysql://localhost:3308/testdb";
        String USER_NAME = "root";
        String PASSWORD = "180203";
        try {
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            conn = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
            System.out.println("Kết nối thành công");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return conn;
    }

//    @Override
//    public void editCB(int SoTK, String Hoten, String GT, String Diachi, int Luong) {
//        Connection conn = getCon();
//        String sql = "update tbCanbo set Hoten = '" + Hoten + "', GT = '" + GT + "', Diachi = '" + Diachi + "', Luong = '" + Luong + "' where SoTK = " + SoTK;
//        try {
//            PreparedStatement pstmt = conn.prepareStatement(sql);
//            int res = pstmt.executeUpdate();
//            if (res > 0) {
//                System.out.println("Sửa thành công");
//            } else {
//                System.out.println("Sửa thất bại");
//            }
//
//        } catch (Exception e) {
//            System.out.println(e.getMessage());
//        }
//    }
//
//    @Override
//    public void deleteCB(int SoTK) {
//        Connection conn = getCon();
//        String sql = "delete from tbCanbo where SoTK = " + SoTK;
//        try {
//            PreparedStatement pstmt = conn.prepareStatement(sql);
//            int res = pstmt.executeUpdate();
//            if (res > 0) {
//                System.out.println("Xóa thành công");
//            } else {
//                System.out.println("Xóa thất bại");
//            }
//
//        } catch (Exception e) {
//            System.out.println(e.getMessage());
//        }
//    }
    @Override
    public void insertCB(int SoTK, String Hoten, String GT, String Diachi, int Luong) {
        Connection conn = getCon();
        String sql = "insert into tbCanbo values(" + SoTK + ", '" + Hoten + "', '" + GT + "', '" + Diachi + "', + '" + Luong + "')";
        try {
            PreparedStatement pstmt = conn.prepareStatement(sql);
            //In dữ liệu ra dạng JSON

            int res = pstmt.executeUpdate();
            if (res > 0) {
                System.out.println("Thêm thành công");
            } else {
                System.out.println("Thêm thất bại");
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}