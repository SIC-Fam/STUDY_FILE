/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package qlcb2;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author DELL
 */
public class GuiInsertCB extends JFrame{
    
    public GuiInsertCB(){
        setTitle("QLCB");
        setLayout(null);
        setLocationRelativeTo(null);
        setSize(700, 400);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        
        JLabel lbStk = new JLabel("Số tài khoản: ");
        lbStk.setBounds(10, 10, 100, 30);
        JTextField tfStk = new JTextField();
        tfStk.setBounds(120, 10, 100, 30);
        
        JLabel lbhoTen = new JLabel("Họ tên: ");
        lbhoTen.setBounds(10, 60, 100, 30);
        JTextField tfHoTen = new JTextField();
        tfHoTen.setBounds(120, 60, 100, 30);
        
        JLabel lbGt = new JLabel("Giới tính: ");
        lbGt.setBounds(10, 110, 100, 30);
        JTextField tfGt = new JTextField();
        tfGt.setBounds(120, 110, 100, 30);
        
        
        JLabel lbDiaChi = new JLabel("Địa chỉ: ");
        lbDiaChi.setBounds(10, 160, 100, 30);
        JTextField tfDiaChi = new JTextField();
        tfDiaChi.setBounds(120, 160, 100, 30);
        
        JLabel lbLuong = new JLabel("Lương: ");
        lbLuong.setBounds(10, 210, 100, 30);
        JTextField tfLuong = new JTextField();
        tfLuong.setBounds(120, 210, 100, 30);
        
        JButton btThem = new JButton("Thêm");
        btThem.setBounds(50, 260, 80, 20);
        
        JButton btTim = new JButton("Tìm");
        btThem.setBounds(70, 280, 80, 20);
        
        String column[] = {"Số tài khoản", "Họ tên", "Giới tính", "Địa chỉ", "Lương"};
        String data[][] = {};
        DefaultTableModel tableModel = new DefaultTableModel(data,column );
        JTable table = new JTable(tableModel);
        JScrollPane jsp = new JScrollPane(table);
        jsp.setBounds(240, 10, 400, 400);
        
        add(lbStk);
        add(tfStk);
        add(lbhoTen);
        add(tfHoTen);
        add(lbGt);
        add(tfGt);
        add(lbDiaChi);
        add(tfDiaChi);
        add(lbLuong);
        add(tfLuong);
        add(btThem);
                add(btTim);

        add(jsp);
        
        
        
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
        
        
        
        btThem.addActionListener(e -> {
            
            boolean isValid = true;
            int soTK = 0;
            String hoTen = tfHoTen.getText().trim();
            String gt = tfGt.getText().trim();
            String diaChi = tfDiaChi.getText().trim();
            int luong = 0;
            
            try {
                soTK = Integer.parseInt(tfStk.getText().trim());
            } catch (NumberFormatException ex) {
                JOptionPane.showMessageDialog(this, "Nhập số tài khoản không hợp lệ");
                isValid = false;
            }
             try {
                luong = Integer.parseInt(tfLuong.getText().trim());
            } catch (NumberFormatException ex) {
                JOptionPane.showMessageDialog(this, "Nhập lương không hợp lệ");
                isValid = false;
            }
             
            if(hoTen.isEmpty() || gt.isEmpty() || diaChi.isEmpty() || !isValid){
                JOptionPane.showMessageDialog(this, "Vui lòng nhập đầy đủ thông tin");
 
            }else{
                Test_insertCB.doInsertCB(this, soTK, hoTen, gt, diaChi, luong);
                tableModel.addRow(new String[]{soTK+"", hoTen, gt, diaChi, luong+""});
            }
            
        });
        
    }
    
    
}
