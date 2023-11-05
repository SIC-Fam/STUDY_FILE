package Config;
import com.mysql.cj.xdevapi.PreparableStatement;
import java.sql.*;

public class ConnectDB {
    public static void main(String[] args) {
        connect();
        insertData("insert into sinhvien values(10, 110,'Vu Minh Quan', '2003-02-18', 'Nam', 'Ha Noi', 'HN')");

    }
    private static Connection conn;
    public static void connect() {
        String DB_URL = "jdbc:mysql://localhost:3308/testdb";
        String USER_NAME = "root";
        String PASSWORD = "180203";
//      String strConnect = "jdbc:sqlserver://LAPTOP-LUNATIC:1433;databasename=VMQ;integratedSecurity=true;encrypt=true;trustServerCertificate=true";
        try {
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());          
//          DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());
            conn = DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);       
//          DriverManager.getConnection(strConnect);
            System.out.println("Connect successfully");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
    public static void getData(String sql) {
        try {
            Statement stmt = conn.createStatement();
            ResultSet res = stmt.executeQuery(sql);
            while(res.next()){
                System.out.println(res.getInt(2)+ " "+res.getString(3));
            }
        } catch (Exception e) {
        }
    }
    
    public static void insertData(String sql) {
        try {
            PreparedStatement pstmt = conn.prepareStatement(sql);
            int res = pstmt.executeUpdate(sql);
            if(res > 0) {
                System.out.println("Done");
            } else {
                System.out.println("Failed");
            }
            
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
