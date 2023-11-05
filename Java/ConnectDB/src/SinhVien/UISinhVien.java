package SinhVien;

import java.awt.event.*;
import javax.swing.*;
import java.awt.*;
import java.sql.*;

import javax.swing.table.DefaultTableModel;

public class UISinhVien extends JFrame implements ActionListener, MouseListener {

    private static final long serialVersionUID = 1L;
    private JTextField tfMaso;
    private JTextField tfHoten;
    private JTextField tfNgaySinh;
    private JComboBox<String> cboGioiTinh;
    private JTextField tfDiaChi;
    private JComboBox<String> cboMalop;
    private JButton bttThem;
    private DefaultTableModel dfModel;
    private JTable table;
    private JButton bttClear;
    private JButton bttLuu;
    private JButton bttXoa;
    private JButton bttSua;    


    public UISinhVien() {
        setTitle("Chương trình quản lý sinh viên");
        setSize(1000, 600);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        buildGUI();
    }

    private void buildGUI() {
        JPanel pnlLeft = new JPanel(new GridLayout(0, 1));
        pnlLeft.add(new JLabel("THÔNG TIN SINH VIÊN", JLabel.CENTER));
        pnlLeft.add(new JLabel("Mã sinh viên: "));
        pnlLeft.add(tfMaso = new JTextField(20));
        pnlLeft.add(new JLabel("Họ và Tên: "));
        pnlLeft.add(tfHoten = new JTextField(20));
        pnlLeft.add(new JLabel("Ngày sinh: "));
        pnlLeft.add(tfNgaySinh = new JTextField(20));
        pnlLeft.add(new JLabel("Giới tính: "));
        String[] gioiTinh = {"Nam", "Nữ"};
        pnlLeft.add(cboGioiTinh = new JComboBox<>(gioiTinh));
        pnlLeft.add(new JLabel("Địa chỉ: "));
        pnlLeft.add(tfDiaChi = new JTextField(20));
        pnlLeft.add(new JLabel("Mã lớp: "));
        pnlLeft.add(cboMalop = new JComboBox<>());
        String[] dslop = {"DHTHA", "DHTHB", "DHTHC", "DHTHD", "DHTHK"};
        for (String maLop : dslop) {
            cboMalop.addItem(maLop);
        }

        JPanel pnlLeftBottom;
        pnlLeft.add(pnlLeftBottom = new JPanel());
        pnlLeftBottom.add(bttThem = new JButton("Thêm"));
        pnlLeftBottom.add(bttClear = new JButton("Clear"));

        JPanel pnlLeftBottom2;
        pnlLeft.add(pnlLeftBottom2 = new JPanel());
        pnlLeftBottom2.add(bttLuu = new JButton("Lưu"));
        pnlLeftBottom2.add(bttXoa = new JButton("Xóa"));
        pnlLeftBottom2.add(bttSua = new JButton("Sửa"));

        JPanel pnlRight = new JPanel(new BorderLayout(1, 1));
        String[] header = {"Mã SV", "Họ và tên", "Ngày sinh", "Giới tính", "Địa chỉ", "Mã lớp"};
        pnlRight.add(new JScrollPane(table = new JTable(dfModel = new DefaultTableModel(header, 0))));
        add(new JSplitPane(JSplitPane.HORIZONTAL_SPLIT, pnlLeft, pnlRight));

        bttThem.addActionListener(this);
        bttClear.addActionListener(this);
        bttLuu.addActionListener(this);
        bttXoa.addActionListener(this);
        bttSua.addActionListener(this);
        table.addMouseListener(this);
    }

    @Override
    public void mouseClicked(MouseEvent e) {
        // Handle mouse click event
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == bttThem) {
            themSinhVien();
        } else if (e.getSource() == bttClear) {
            clearFields();
        } else if (e.getSource() == bttLuu) {
            luuThongTinSinhVien();
        } else if (e.getSource() == bttXoa) {
            xoaSinhVien();
        } else if (e.getSource() == bttSua) {
            suaThongTinSinhVien();
        }
    }

    private void themSinhVien() {
        String maSV = tfMaso.getText();
        String hoTen = tfHoten.getText();
        String ngaySinh = tfNgaySinh.getText();
        String gioiTinh = (String) cboGioiTinh.getSelectedItem();
        String diaChi = tfDiaChi.getText();
        String maLop = (String) cboMalop.getSelectedItem();
        if (maSV.isEmpty() || hoTen.isEmpty() || ngaySinh.isEmpty() || diaChi.isEmpty()) {
            JOptionPane.showMessageDialog(this, "Vui lòng nhập đầy đủ thông tin.", "Lỗi", JOptionPane.ERROR_MESSAGE);
            return;
        }
        try {
            Connection conn = getConnection();
            String sql = "INSERT INTO sinhvien (maSV, hoTen, ngaySinh, gioiTinh, diaChi, maLop) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, maSV);
            statement.setString(2, hoTen);
            statement.setString(3, ngaySinh);
            statement.setString(4, gioiTinh);
            statement.setString(5, diaChi);
            statement.setString(6, maLop);

            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                JOptionPane.showMessageDialog(this, "Thêm sinh viên thành công!");
                displayDataFromDatabase();
                clearFields();
            } 

            conn.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }

    private void luuThongTinSinhVien() {
        String maSV = tfMaso.getText();
        String hoTen = tfHoten.getText();
        String ngaySinh = tfNgaySinh.getText();
        String gioiTinh = (String) cboGioiTinh.getSelectedItem();
        String diaChi = tfDiaChi.getText();
        String maLop = (String) cboMalop.getSelectedItem();

        try {
            Connection conn = getConnection();
            String sql = "UPDATE sinhvien SET hoTen = ?, ngaySinh = ?, gioiTinh = ?, diaChi = ?, maLop = ? WHERE maSV = ?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, hoTen);
            statement.setString(2, ngaySinh);
            statement.setString(3, gioiTinh);
            statement.setString(4, diaChi);
            statement.setString(5, maLop);
            statement.setString(6, maSV);

            int rowsUpdated = statement.executeUpdate();
            if (rowsUpdated > 0) {
                JOptionPane.showMessageDialog(this, "Lưu thông tin thành công!");
                displayDataFromDatabase();
            }

            conn.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }

    private void xoaSinhVien() {
        int selectedRow = table.getSelectedRow();
        if (selectedRow == -1) {
            JOptionPane.showMessageDialog(this, "Vui lòng chọn một sinh viên để xóa.", "Lỗi", JOptionPane.ERROR_MESSAGE);
            return;
        }

        String maSV = (String) dfModel.getValueAt(selectedRow, 0);
        int option = JOptionPane.showConfirmDialog(this, "Bạn có chắc chắn muốn xóa sinh viên này?", "Xác nhận xóa", JOptionPane.YES_NO_OPTION);
        if (option == JOptionPane.YES_OPTION) {
            try {
                Connection conn = getConnection();
                String sql = "DELETE FROM sinhvien WHERE maSV = ?";
                PreparedStatement statement = conn.prepareStatement(sql);
                statement.setString(1, maSV);

                int rowsDeleted = statement.executeUpdate();
                if (rowsDeleted > 0) {
                    JOptionPane.showMessageDialog(this, "Xóa sinh viên thành công!");
                    displayDataFromDatabase();
                    clearFields();
                }

                conn.close();
            } catch (Exception ex) {
                System.out.println(ex.getMessage());
            }
        }
    }

    private void suaThongTinSinhVien() {
        int selectedRow = table.getSelectedRow();
        if (selectedRow == -1) {
            JOptionPane.showMessageDialog(this, "Vui lòng chọn một sinh viên để sửa.", "Lỗi", JOptionPane.ERROR_MESSAGE);
            return;
        }

        String maSV = tfMaso.getText();
        String hoTen = tfHoten.getText();
        String ngaySinh = tfNgaySinh.getText();
        String gioiTinh = (String) cboGioiTinh.getSelectedItem();
        String diaChi = tfDiaChi.getText();
        String maLop = (String) cboMalop.getSelectedItem();

        if (maSV.isEmpty() || hoTen.isEmpty() || ngaySinh.isEmpty() || diaChi.isEmpty()) {
            JOptionPane.showMessageDialog(this, "Vui lòng nhập đầy đủ thông tin.", "Lỗi", JOptionPane.ERROR_MESSAGE);
            return;
        }

        try {
            Connection conn = getConnection();
            String sql = "UPDATE sinhvien SET hoTen = ?, ngaySinh = ?, gioiTinh = ?, diaChi = ?, maLop = ? WHERE maSV = ?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, hoTen);
            statement.setString(2, ngaySinh);
            statement.setString(3, gioiTinh);
            statement.setString(4, diaChi);
            statement.setString(5, maLop);
            statement.setString(6, maSV);

            int rowsUpdated = statement.executeUpdate();
            if (rowsUpdated > 0) {
                JOptionPane.showMessageDialog(this, "Sửa thông tin sinh viên thành công!", "Thành công", JOptionPane.INFORMATION_MESSAGE);
                displayDataFromDatabase();
                clearFields();
            }

            conn.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }

    private void displayDataFromDatabase() {
        try {
            Connection conn = getConnection();
            String sql = "SELECT * FROM sinhvien";
            PreparedStatement statement = conn.prepareStatement(sql);
            ResultSet result = statement.executeQuery();

            dfModel.setRowCount(0); // Xóa dữ liệu cũ trên bảng

            while (result.next()) {
                String maSV = result.getString("maSV");
                String hoTen = result.getString("hoTen");
                String ngaySinh = result.getString("ngaySinh");
                String gioiTinh = result.getString("gioiTinh");
                String diaChi = result.getString("diaChi");
                String maLop = result.getString("maLop");

                Object[] rowData = {maSV, hoTen, ngaySinh, gioiTinh, diaChi, maLop};
                dfModel.addRow(rowData);
            }

            conn.close();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    private void clearFields() {
        tfMaso.setText("");
        tfHoten.setText("");
        tfNgaySinh.setText("");
        tfDiaChi.setText("");
        cboGioiTinh.setSelectedIndex(0);
        cboMalop.setSelectedIndex(0);
    }

    private Connection getConnection() throws SQLException {
        String DB_URL = "jdbc:mysql://localhost:3308/testdb";
        String USER_NAME = "root";
        String PASSWORD = "180203";

        DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
        return DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> {
            UISinhVien ui = new UISinhVien();
            ui.displayDataFromDatabase();
            ui.setVisible(true);
        });
    }

    @Override
    public void mousePressed(MouseEvent e) {
    }

    @Override
    public void mouseReleased(MouseEvent e) {
    }

    @Override
    public void mouseEntered(MouseEvent e) {
    }

    @Override
    public void mouseExited(MouseEvent e) {
    }
}
