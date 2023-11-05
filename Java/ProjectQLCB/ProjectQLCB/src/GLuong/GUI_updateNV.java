package GLuong;

import java.awt.HeadlessException;
import java.awt.event.ActionEvent;
import javax.swing.*;

public class GUI_updateNV extends JFrame {

    XLLuong xll;

    public GUI_updateNV() {
        initComponents();
        xll = new XLLuong();
        setSize(440, 400);
        setLocationRelativeTo(null);
        setResizable(false);
    }

    private void initComponents() {

        JLabel jLabel1 = new JLabel();
        JLabel jLabel2 = new JLabel();
        JLabel jLabel3 = new JLabel();
        JLabel jLabel4 = new JLabel();
        txbMa = new javax.swing.JTextField();
        txbTen = new javax.swing.JTextField();
        cbbDiaChi = new javax.swing.JComboBox<>();
        txbLuong = new javax.swing.JTextField();

        JButton btnTimKiem = new JButton();
        JButton btnThem = new JButton();
        JButton btnCapNhat = new JButton();
        JButton btnXoa = new JButton();
        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("THÔNG TIN NHÂN VIÊN");
        jLabel1.setText("Mã nhân viên:");
        jLabel2.setText("Họ và tên:");
        jLabel3.setText("Địa chỉ:");
        jLabel4.setText("Lương:");
        cbbDiaChi.setModel(new javax.swing.DefaultComboBoxModel<>(new String[]{"Hải Phòng", "Hà Nội", "Nam Định"}));
        btnTimKiem.setText("Tìm kiếm");
        btnTimKiem.addActionListener(this::btnTimKiemActionPerformed);
        btnCapNhat.setText("Cập nhật");
        btnCapNhat.addActionListener(this::btnCapNhatActionPerformed);
        btnThem.setText("Thêm");
        btnThem.addActionListener(this::btnThemActionPerformed);
        btnXoa.setText("Xóa");
        btnXoa.addActionListener(this::btnXoaActionPerformed);
        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
                layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                .addGap(60, 60, 60)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                        .addComponent(jLabel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .addComponent(btnTimKiem, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE).addComponent(btnTimKiem, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .addComponent(btnThem, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .addComponent(jLabel3, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 129, Short.MAX_VALUE)
                                        .addComponent(jLabel2, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 129, Short.MAX_VALUE)
                                        .addComponent(jLabel1, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                        .addComponent(txbMa, javax.swing.GroupLayout.Alignment.TRAILING)
                                        .addComponent(txbTen, javax.swing.GroupLayout.Alignment.TRAILING)
                                        .addComponent(cbbDiaChi, 0, 162, Short.MAX_VALUE)
                                        .addComponent(btnCapNhat, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 141, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addComponent(btnXoa, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 141, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addComponent(txbLuong))
                                .addGap(335, 335, 335))
        );
        layout.setVerticalGroup(
                layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(layout.createSequentialGroup()
                                .addGap(18, 18, 18)
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                        .addComponent(txbMa, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addComponent(jLabel1))
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                        .addComponent(txbTen, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addComponent(jLabel2))
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                        .addComponent(jLabel3)
                                        .addComponent(cbbDiaChi, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                //                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 57, Short.MAX_VALUE)
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                        .addComponent(txbLuong, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addComponent(jLabel4))
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                        .addComponent(btnTimKiem)
                                        .addComponent(btnCapNhat)
                                )
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                        .addComponent(btnThem)
                                        .addComponent(btnXoa)
                                )
                                .addGap(30, 30, 30))
        );
        pack();
    }

    private void btnTimKiemActionPerformed(java.awt.event.ActionEvent evt) {
        String maNVText = txbMa.getText().trim();
        if (maNVText.isEmpty()) {
            JOptionPane.showMessageDialog(null, "Thiếu mã nhân viên");
        } else {
            try {
                int maNV = Integer.parseInt(maNVText);
                Nhanvien nv = xll.getNVbyMa(maNV);
                if (nv == null) {
                    JOptionPane.showMessageDialog(null, "Không tìm thấy");
                } else {
                    txbTen.setText(nv.getHoTen());
                    cbbDiaChi.setSelectedItem(nv.getDiachi());
                    txbLuong.setText(String.valueOf(nv.getLuong()));
                }
            } catch (NumberFormatException ex) {
                JOptionPane.showMessageDialog(null, "Mã nhân viên phải là số");
            }
        }
    }

    private void btnCapNhatActionPerformed(java.awt.event.ActionEvent evt) {
        try {
            int maNV = Integer.parseInt(txbMa.getText());
            String hoTen = txbTen.getText();
            String diaChi = cbbDiaChi.getSelectedItem().toString();
            int luong = Integer.parseInt(txbLuong.getText());
            if (maNV < 0) {
                JOptionPane.showMessageDialog(null, "Mã nhân viên không hợp lệ");
            } else {
                Nhanvien nv = new Nhanvien(maNV, hoTen, diaChi, luong);
                if (xll.updateNhanvien(nv)) {
                    JOptionPane.showMessageDialog(null, "Cập nhật thành công");
                } else {
                    JOptionPane.showMessageDialog(null, "Cập nhật không thành công");
                }
            }
        } catch (NumberFormatException e) {
            JOptionPane.showMessageDialog(null, "Lương và mã nhân viên phải là số");
        }
    }

    private void btnThemActionPerformed(java.awt.event.ActionEvent evt) {
        try {
            int maNV = Integer.parseInt(txbMa.getText());
            String hoTen = txbTen.getText();
            String diaChi = cbbDiaChi.getSelectedItem().toString();
            int luong = Integer.parseInt(txbLuong.getText());
            Nhanvien nv = new Nhanvien(maNV, hoTen, diaChi, luong);
            if (xll.themNhanvien(nv)) {
                JOptionPane.showMessageDialog(null, "Thêm thành công");
            } else {
                JOptionPane.showMessageDialog(null, "Thêm thất bại");
            }
        } catch (HeadlessException e) {
            JOptionPane.showMessageDialog(rootPane, e);
        }
    }

    private void btnXoaActionPerformed(ActionEvent actionEvent) {
        try {
            int maNV = Integer.parseInt(txbMa.getText());
            if (xll.xoaNhanvien(maNV)) {
                JOptionPane.showMessageDialog(null, "Xóa thành công");
            } else {
                JOptionPane.showMessageDialog(null, "Xóa thất bại");
            }
        } catch (NumberFormatException e) {
            JOptionPane.showMessageDialog(null, "Mã nhân viên phải là số");
        }
    }

    public static void main(String[] args) {
        new GUI_updateNV().setVisible(true);
    }

    private javax.swing.JComboBox<String> cbbDiaChi;
    private javax.swing.JTextField txbLuong;
    private javax.swing.JTextField txbMa;
    private javax.swing.JTextField txbTen;
}
