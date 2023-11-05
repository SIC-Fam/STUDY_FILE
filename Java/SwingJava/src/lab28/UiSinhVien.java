package lab28;

import java.awt.event.*;
import javax.swing.*;
import java.io.*;
import java.awt.*;
import lab28.ConnectDB;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.swing.table.DefaultTableModel;
import static lab28.ConnectDB.DB_URL;
import static lab28.ConnectDB.PASSWORD;
import static lab28.ConnectDB.USER_NAME;

/**
 *
 * @author Lunatic
 */
public class UiSinhVien extends JFrame implements ActionListener, MouseListener{
    private static final long serialVersionUID = 1L;
    private JTextField tfMaso;
    private JComboBox<String> cboMalop; 
    private JTextField tiDiemLT; 
    private JTextField tfDiemTH; 
    private JTextField tfDiemTB; 
    private JTextField tfKQ; 
    private JButton bttKQ; 
    private JButton bttThem; 
    private DefaultTableModel dfModel; 
    private JTable table; 
    private JTextField tfHoten; 
    private DanhSachSinhVien ds; 
    private JButton bttClear; 
    private JButton bttLuu; 
    private JButton bttXoa; 
    private JButton bttSua; 
    private JButton bttTim; 
//    private final String FILENAME="DATA_SINHVIEN.DAT";
    
    
    public UiSinhVien() { 
        setTitle("Chương trình quản lý sinh viên");
        setSize(1000, 600); 
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setLocationRelativeTo(null); 
        buildGUI(); 
//        napDanhSachSinhVien(FILENAME); 
    } 
//    private void napDanhSachSinhVien(String file) { 
//        if(new File(file).exists()){
//            try {
//                FileInputStream in = new FileInputStream(FILENAME);
//                ObjectInputStream oos = new ObjectInputStream(in);
//            } catch (Exception e) {
//                JOptionPane.showMessageDialog(null, "IO Error!");
//                return;
//            }
//        }
//        else 
//            ds=new DanhSachSinhVien();
//    }
//    
//    
    
    private void buildGUI() {
        JPanel pnlLeft = new JPanel(new GridLayout(0,1));
        pnlLeft.add(new JLabel("THÔNG TIN SINH VIÊN", JLabel.CENTER));
        pnlLeft.add(new JLabel("Mã sinh viên: "));
        pnlLeft.add(tfMaso = new JTextField(20));
        pnlLeft.add(new JLabel("Họ và Tên: "));
        pnlLeft.add(tfHoten = new JTextField(20));
        pnlLeft.add(new JLabel("Mã lớp: "));
        pnlLeft.add(cboMalop = new JComboBox<String>());
        String[] dslop = {
            "DHTHA", "DHTHB", "DHTHC", "DHTHD", "DHTHK"
        };
        for (int i = 0; i < dslop.length; i++) {
            cboMalop.addItem(dslop[i]);
        }

        pnlLeft.add(new JLabel("Điểm lý thuyết: "));
        pnlLeft.add(tiDiemLT = new JTextField(20));
        pnlLeft.add(new JLabel("Điểm thực hành: "));
        pnlLeft.add(tfDiemTH = new JTextField(20));
        pnlLeft.add(new JLabel("Điểm trung bình: "));
        pnlLeft.add(tfDiemTB = new JTextField(20));
        tfDiemTB.setEditable(false);
        pnlLeft.add(new JLabel("Kết quả: "));
        pnlLeft.add(tfKQ = new JTextField(20));
        tfKQ.setEditable(false);

        JPanel pnlLeftBottom;
        pnlLeft.add(pnlLeftBottom = new JPanel());
        pnlLeftBottom.add(bttKQ = new JButton("Kết quả"));
        pnlLeftBottom.add(bttThem = new JButton("Thêm"));
        pnlLeftBottom.add(bttClear = new JButton("Clear"));

        JPanel pnlLeftBottom2;
        pnlLeft.add(pnlLeftBottom2 = new JPanel());
        pnlLeftBottom2.add(bttLuu = new JButton("Lưu"));
        pnlLeftBottom2.add(bttXoa = new JButton("Xóa"));
        pnlLeftBottom2.add(bttSua = new JButton("Sửa"));
        pnlLeftBottom2.add(bttTim = new JButton("Tìm"));

        JPanel pnlRight = new JPanel(new BorderLayout(1,1));
        String [] header = {"Mã SV", "Họ và tên", "Mã lớp", "Điểm LT", "Điểm TH", "Điểm TB", "Kết quả"};
        pnlRight.add(new JScrollPane(table = new JTable(dfModel = new DefaultTableModel(header, 0))));
        add(new JSplitPane(JSplitPane.HORIZONTAL_SPLIT, pnlLeft, pnlRight));

        bttKQ.addActionListener(this);
        bttThem.addActionListener(this);
        bttClear.addActionListener(this);
        bttLuu.addActionListener(this);
        bttXoa.addActionListener(this);
        bttSua.addActionListener(this);
        bttTim.addActionListener(this);
        table.addMouseListener(this);
    }

    public static void main(String[] args) throws SQLException {
        new UiSinhVien().setVisible(true);
        Connection conn = null;

        try {
            // Đăng ký driver JDBC
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Tạo kết nối đến cơ sở dữ liệu
            conn = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
            System.out.println("Connected to the database.");

            // Thực hiện các thao tác với cơ sở dữ liệu ở đây

        } catch (ClassNotFoundException e) {
            System.out.println("JDBC driver not found");
            e.printStackTrace();
        }
    }
    


    @Override
    public void mouseClicked(MouseEvent e) {

    }

    @Override
    public void mousePressed(MouseEvent e) {
//        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void mouseReleased(MouseEvent e) {
//        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void mouseEntered(MouseEvent e) {
//        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void mouseExited(MouseEvent e) {
//        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    @Override
    public void actionPerformed(ActionEvent e) {

    }
}

