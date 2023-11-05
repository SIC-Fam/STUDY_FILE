/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package qlcb2;
import java.sql.*;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
/**
 *
 * @author DELL
 */
class QLCB implements ICanBo {
    public Connection Conn = null;
    @Override
    public Connection getCon() {
        String strConnect = "jdbc:mysql://localhost:3308/testdb";
        try {
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            Conn = DriverManager.getConnection(strConnect, "root", "180203");
            System.out.println("connect ok");

        } catch (SQLException e) {
            System.out.println("Lỗi: " + e.getMessage());
        }
        return Conn;
    }
    @Override
    public void insertCB(JFrame j,int soTk, String hoTen, String gt, String diaChi, int luong) {
        String sql = "insert into tbCanBo values(" + soTk + ", '" + hoTen + "', '" + gt + "', '" + diaChi + "'," + luong + ")";
        try {
            PreparedStatement pst = Conn.prepareStatement(sql);
            int res = pst.executeUpdate();
            if (res > 0) {
                JOptionPane.showMessageDialog(j, "Insert success");
            } else {
                JOptionPane.showMessageDialog(j, "insert failed");
            }
        } catch (SQLException e) {
            System.out.println("Error: "+e.getMessage());
        }
    }
    
    @Override
    public void getCBbyMa(JFrame j, int soTk) {
        Connection con = getCon();
        CanBo cb = null;
        try {
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from tbCanbo where soTK = " + soTk);
            while (rs.next()) {
                String hoTen = rs.getString("hoTen");
                String gt = rs.getString("gt");
                String diaChi = rs.getString("diaChi");
                int luong = rs.getInt("luong");
                cb = new CanBo(soTk, hoTen, gt, diaChi, luong);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

   
}


