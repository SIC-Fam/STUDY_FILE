/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Exam;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

/**
 *
 * @author Lunatic
 */
public class GUI_Canbo extends JFrame {

    QLCB xlcb;
    private JTextField txtSoTK, txtHoten, txtGT, txtDiachi, txtLuong;
    private JButton btnThem, btnClear, btnSua, btnDelete, btnTim;
    

    public GUI_Canbo() {
        xlcb = new QLCB();
        setTitle("Nép vào anh và nghe anh hát");
        setSize(400, 400);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        setLayout(null);

        JLabel lblSoTK = new JLabel("Số Tài Khoản:");
        lblSoTK.setBounds(10, 10, 100, 20);
        add(lblSoTK);

        txtSoTK = new JTextField();
        txtSoTK.setBounds(120, 10, 150, 20);
        add(txtSoTK);

        JLabel lblHoten = new JLabel("Họ Tên:");
        lblHoten.setBounds(10, 40, 100, 20);
        add(lblHoten);

        txtHoten = new JTextField();
        txtHoten.setBounds(120, 40, 150, 20);
        add(txtHoten);

        JLabel lblGT = new JLabel("Giới Tính:");
        lblGT.setBounds(10, 70, 100, 20);
        add(lblGT);

        txtGT = new JTextField();
        txtGT.setBounds(120, 70, 150, 20);
        add(txtGT);

        JLabel lblDiachi = new JLabel("Địa Chỉ:");
        lblDiachi.setBounds(10, 100, 100, 20);
        add(lblDiachi);

        txtDiachi = new JTextField();
        txtDiachi.setBounds(120, 100, 150, 20);
        add(txtDiachi);

        JLabel lblLuong = new JLabel("Lương:");
        lblLuong.setBounds(10, 130, 100, 20);
        add(lblLuong);

        txtLuong = new JTextField();
        txtLuong.setBounds(120, 130, 150, 20);
        add(txtLuong);

        btnThem = new JButton("Thêm");
        btnThem.setBounds(120, 160, 80, 30);
        btnThem.setText("Thêm");
        btnThem.addActionListener(this::btnThemActionPerformed);
        add(btnThem);

        btnClear = new JButton("Clear");
        btnClear.setBounds(220, 160, 80, 30);
        btnClear.addActionListener(this::btnClearFieldsActionPerformed);
        add(btnClear);

        btnSua = new JButton("Sửa");
        btnSua.setBounds(220, 200, 80, 30);
        btnSua.addActionListener(this::btnSuaActionPerformed);
        add(btnSua);

        btnDelete = new JButton("Xóa");
        btnDelete.setBounds(120, 200, 80, 30);
        btnDelete.addActionListener(this::btnXoaActionPerformed);
        add(btnDelete);
        
        btnTim = new JButton("Tìm");
        btnTim.setBounds(320, 160, 80, 30);
        btnTim.addActionListener(this::btnTimKiemActionPerformed);
        add(btnTim);
    }

    private void btnThemActionPerformed(java.awt.event.ActionEvent evt) {
        try {
            int SoTK = Integer.parseInt(txtSoTK.getText());
            String Hoten = txtHoten.getText();
            String GT = txtGT.getText();
            String Diachi = txtDiachi.getText();
            int Luong = Integer.parseInt(txtLuong.getText());
            Canbo cb = new Canbo(SoTK, Hoten, GT, Diachi, Luong);
            if (xlcb.insertCB(cb)) {
                JOptionPane.showMessageDialog(null, "Thêm thành công");
            } else {
                JOptionPane.showMessageDialog(null, "Thêm thất bại");
            }
        } catch (HeadlessException e) {
            JOptionPane.showMessageDialog(rootPane, e);
        }
    }

    public void btnClearFieldsActionPerformed(java.awt.event.ActionEvent evt) {
        txtSoTK.setText("");
        txtHoten.setText("");
        txtGT.setText("");
        txtDiachi.setText("");
        txtLuong.setText("");
    }

    public void btnXoaActionPerformed(java.awt.event.ActionEvent evt) {
        try {
            int SoTK = Integer.parseInt(txtSoTK.getText());
            if (xlcb.deleteCB(SoTK)) {
                JOptionPane.showMessageDialog(null, "Xóa thành công");
            } else {
                JOptionPane.showMessageDialog(null, "Xóa hong thành công");
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Số tài khoản phải là số");
        }
    }

    public void btnSuaActionPerformed(java.awt.event.ActionEvent evt) {
        try {
            int SoTK = Integer.parseInt(txtSoTK.getText());
            String Hoten = txtHoten.getText();
            String GT = txtGT.getText();
            String Diachi = txtDiachi.getText();
            int Luong = Integer.parseInt(txtLuong.getText());
            if (SoTK < 0) {
                JOptionPane.showMessageDialog(null, "Số tài khoản không hợp lệ");
            } else {
                Canbo cb = new Canbo(SoTK, Hoten, GT, Diachi, Luong);
                if (xlcb.editCB(cb)) {
                    JOptionPane.showMessageDialog(null, "Cập nhật thành công");
                } else {
                    JOptionPane.showMessageDialog(null, "Cập nhật không thành công");
                }
            }
        } catch (NumberFormatException e) {
            JOptionPane.showMessageDialog(null, "Số tài khoản phải là số");
        }
    }

    
    public void btnTimKiemActionPerformed(java.awt.event.ActionEvent evt) {
        String SoTkText = txtSoTK.getText().trim();
        if (SoTkText.isEmpty()) {
            JOptionPane.showMessageDialog(null, "Thiếu số tài khoản");
        } else {
            try {
                int SoTK = Integer.parseInt(SoTkText);
                Canbo cb = xlcb.getCBbyMa(SoTK);
                if (cb == null) {
                    JOptionPane.showMessageDialog(null, "Không tìm thấy");
                } else {
                    txtHoten.setText(cb.getHoten());
                    txtGT.setText(cb.getGT());
                    txtDiachi.setText(cb.getDiachi());
                    txtLuong.setText(String.valueOf(cb.getLuong()));
                }
            } catch (NumberFormatException ex) {
                JOptionPane.showMessageDialog(null, "Mã nhân viên phải là số");
            }
        }
    }
    
    public static void main(String[] args) {
        new GUI_Canbo().setVisible(true);
    }

}
