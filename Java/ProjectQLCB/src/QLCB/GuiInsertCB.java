package QLCB;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.table.DefaultTableModel;

public class GuiInsertCB extends JFrame {

    private JTextField txtSoTK, txtHoten, txtGT, txtDiachi, txtLuong;
    private JButton btnAdd, btnClear;
    private DefaultTableModel tableModel;
    private JTable dataTable;

    public GuiInsertCB() {
        setTitle("Thêm Cán Bộ");
        setSize(600, 400);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLayout(null); // Set the layout to Null Layout

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

        btnAdd = new JButton("Thêm");
        btnAdd.setBounds(120, 160, 80, 30);
        btnAdd.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                addDataToTable();
            }
        });
        add(btnAdd);

        btnClear = new JButton("Clear");
        btnClear.setBounds(220, 160, 80, 30);
        btnClear.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                clearFields();
            }
        });
        add(btnClear);

        tableModel = new DefaultTableModel();
        tableModel.addColumn("Số Tài Khoản");
        tableModel.addColumn("Họ Tên");
        tableModel.addColumn("Giới Tính");
        tableModel.addColumn("Địa Chỉ");
        tableModel.addColumn("Lương");

        dataTable = new JTable(tableModel);
        JScrollPane scrollPane = new JScrollPane(dataTable);
        scrollPane.setBounds(10, 200, 570, 150);
        add(scrollPane);
        
    }

    private void addDataToTable() {
        int soTK = Integer.parseInt(txtSoTK.getText());
        String hoten = txtHoten.getText();
        String gt = txtGT.getText();
        String diachi = txtDiachi.getText();
        int luong = Integer.parseInt(txtLuong.getText());

        tableModel.addRow(new Object[]{soTK, hoten, gt, diachi, luong});
        clearFields();
    }

    private void clearFields() {
        txtSoTK.setText("");
        txtHoten.setText("");
        txtGT.setText("");
        txtDiachi.setText("");
        txtLuong.setText("");
    }
}
