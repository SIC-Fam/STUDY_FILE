/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Exam;

import java.awt.Frame;
import java.sql.*;

/**
 *
 * @author Lunatic
 */
public class QLCB {

    public Connection conn = null;

    public Connection getCon() {
        String DB_URL = "jdbc:mysql://localhost:3308/testdb";
//        String USER_NAME = "root";
//        String PASSWORD = "180203";
        try {
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            conn = DriverManager.getConnection(DB_URL, "root", "180203");
            System.out.println("Kết nối thành công");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return conn;
    }

    public boolean insertCB(Canbo cb) {
        Connection conn = getCon();
        int isAdd = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("insert into tbcanbo values (?, ?, ?, ?, ?)");
            pst.setInt(1, cb.getSoTK());
            pst.setString(2, cb.getHoten());
            pst.setString(3, cb.getGT());
            pst.setString(4, cb.getDiachi());
            pst.setInt(5, cb.getLuong());
            isAdd = pst.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return isAdd > 0;
    }

    public boolean deleteCB(int SoTK) {
        Connection conn = getCon();
        Canbo cb = null;
        try {
            PreparedStatement psmt = conn.prepareStatement("delete from tbCanbo where SoTK = ?");
            psmt.setInt(1, SoTK);
            psmt.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return true;
    }

    public boolean editCB(Canbo cb) {
        int SoTK = cb.getSoTK();
        Connection conn = getCon();
        int isUpdate = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("update tbCanbo set SoTK = ?, Hoten = ?, GT = ?, Diachi = ?, Luong = ?  where SoTK = ?");
            pst.setInt(1, cb.getSoTK());
            pst.setString(2, cb.getHoten());
            pst.setString(3, cb.getGT());
            pst.setString(4, cb.getDiachi());
            pst.setInt(5, cb.getLuong());

            isUpdate = pst.executeUpdate();
            System.out.println("Update thành công");
        } catch (Exception e) {
            System.out.println("Update thất bại với lỗi: " + e.getMessage());
        }
        return isUpdate > 0;
    }
    
    public Canbo getCBbyMa (int SoTK) {
        Connection con = getCon();
        Canbo cb = null;
        try {
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from tbCanbo where SoTK = " + SoTK);
            while (rs.next()) {
                String Hoten = rs.getString("Hoten");
                String GT = rs.getString("GT");
                String Diachi = rs.getString("Diachi");
                int Luong = rs.getInt("Luong");
                cb = new Canbo(SoTK, Hoten, GT, Diachi, Luong);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return cb;
    }
}
