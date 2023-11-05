package GLuong;

import java.sql.*;

public class XLLuong {
    public Connection getCon() {
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3308/dlluong";
            String user_name = "root";
            String password = "180203";
            con = DriverManager.getConnection(url, user_name, password);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return con;
    }

    public Nhanvien getNVbyMa (int MaNV) {
        Connection con = getCon();
        Nhanvien nv = null;
        try {
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from tbNhanvien where MaNV = " + MaNV);
            while (rs.next()) {
                String Hoten = rs.getString("Hoten");
                String Diachi = rs.getString("Diachi");
                int Luong = rs.getInt("Luong");
                nv = new Nhanvien(MaNV, Hoten, Diachi, Luong);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return nv;
    }


    public boolean updateNhanvien (Nhanvien nv) {
        int MaNV = nv.getMaNV();
        Connection con = getCon();
        int cnt = 0;
        if (cnt > 0) {
            int isUpdate = 0;
            try {
                PreparedStatement pst = con.prepareStatement("update tbNhanvien set Hoten = ?, Diachi = ?, Luong = ? where MaNV = ?");
                pst.setString(1, nv.getHoTen());
                pst.setString(2, nv.getDiachi());
                pst.setString(3, nv.getLuong() + "");
                pst.setInt(4, MaNV);
                isUpdate = pst.executeUpdate();
                System.out.println("Update thành công");
            } catch (Exception e) {
                System.out.println("Update thất bại với lỗi: "+e.getMessage());
            }
            return isUpdate > 0;
        }
        else {
            int isAdd = 0;
            try {
                PreparedStatement pst = con.prepareStatement("insert into tbNhanvien values (?, ?, ?, ?)"); 
                pst.setInt(1, MaNV);
                pst.setString(2, nv.getHoTen());
                pst.setString(3, nv.getDiachi());
                pst.setString(4, nv.getLuong() + "");
                isAdd = pst.executeUpdate();
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
            return isAdd > 0;
        }
    }
    
    public boolean themNhanvien (Nhanvien nv) {
        Connection conn = getCon();
        int isAdd = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("insert into tbNhanvien values (?, ?, ?, ?)");
            pst.setInt(1, nv.getMaNV());
            pst.setString(2, nv.getHoTen());
            pst.setString(3, nv.getDiachi());
            pst.setString(4, nv.getLuong() + "");
            isAdd = pst.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return isAdd > 0;
    }
    
    public boolean xoaNhanvien (int MaNV) {
        Connection conn = getCon();
        Nhanvien nv = null;
        try {
            PreparedStatement pst = conn.prepareStatement("delete from tbNhanvien where MaNV = ?");
            pst.setInt(1, MaNV);
            pst.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return true;
    }
}
