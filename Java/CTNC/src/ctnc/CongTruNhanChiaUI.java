package ctnc;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class CongTruNhanChiaUI extends JFrame {
    public CongTruNhanChiaUI(String title) {
        setTitle(title);
    }

    public void doShow() {
        setSize(400, 300);
        setLocationRelativeTo(null);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        addControl();
        setVisible(true);
        setResizable(false);
    }

    private void addControl() {
        JTextField txtA = new JTextField(15);
        JTextField txtB = new JTextField(15);
        JTextField txtKQ = new JTextField(15);
        JButton btnCong = new JButton("Cộng");
        JButton btnTru = new JButton("Trừ");
        JButton btnNhan = new JButton("Nhân");
        JButton btnChia = new JButton("Chia");
        JButton btnXoa = new JButton("Xóa");
        JButton btnThoat = new JButton("Thoát");


        // Adding action listeners for the buttons
        btnCong.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                try {
                    double a = Double.parseDouble(txtA.getText());
                    double b = Double.parseDouble(txtB.getText());
                    double kq = a + b;
                    txtKQ.setText(String.valueOf(kq));
                } catch (NumberFormatException ex) {
                    txtKQ.setText("Invalid input");
                }
            }
        });

        btnTru.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                try {
                    double a = Double.parseDouble(txtA.getText());
                    double b = Double.parseDouble(txtB.getText());
                    double kq = a - b;
                    txtKQ.setText(String.valueOf(kq));
                } catch (NumberFormatException ex) {
                    txtKQ.setText("Invalid input");
                }
            }
        });

        btnNhan.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                try {
                    double a = Double.parseDouble(txtA.getText());
                    double b = Double.parseDouble(txtB.getText());
                    double kq = a * b;
                    txtKQ.setText(String.valueOf(kq));
                } catch (NumberFormatException ex) {
                    txtKQ.setText("Invalid input");
                }
            }
        });

        btnChia.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                try {
                    double a = Double.parseDouble(txtA.getText());
                    double b = Double.parseDouble(txtB.getText());
                    if (b != 0) {
                        double kq = a / b;
                        txtKQ.setText(String.valueOf(kq));
                    } else {
                        txtKQ.setText("Cannot divide by zero");
                    }
                } catch (NumberFormatException ex) {
                    txtKQ.setText("Invalid input");
                }
            }
        });

        btnThoat.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                System.exit(0);
            }
        });

        btnXoa.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                txtA.setText("");
                txtB.setText("");
                txtKQ.setText("");
            }
        });
        JPanel pnMain = new JPanel();
        pnMain.setLayout(new BoxLayout(pnMain, BoxLayout.Y_AXIS));
        JPanel pnA = new JPanel();
        pnA.setLayout(new FlowLayout());
        pnA.add(new JLabel("Nhập a: "));
        pnA.add(txtA);
        pnMain.add(pnA);
        JPanel pnB = new JPanel();
        pnB.setLayout(new FlowLayout());
        pnB.add(new JLabel("Nhập b: "));
        pnB.add(txtB);
        pnMain.add(pnB);
        JPanel pnKQ = new JPanel();
        pnKQ.setLayout(new FlowLayout());
        pnKQ.add(new JLabel("Kết quả: "));
        pnKQ.add(txtKQ);
        pnMain.add(pnKQ);
        JPanel pnButton = new JPanel();
        pnButton.setLayout(new FlowLayout());
        pnButton.add(btnCong);
        pnButton.add(btnTru);
        pnButton.add(btnNhan);
        pnButton.add(btnChia);
        pnMain.add(pnButton);
        Container con = getContentPane();
        con.add(pnMain);

        JPanel pnTitle = new JPanel();
        pnTitle.setLayout(new FlowLayout());
        pnTitle.add(new JLabel("CỘNG TRỪ NHÂN CHIA"));
        con.add(pnTitle, BorderLayout.NORTH);

        JPanel pnButton2 = new JPanel();
        pnButton2.setLayout(new FlowLayout());
        pnButton2.add(btnXoa);
        pnButton2.add(btnThoat);
        con.add(pnButton2, BorderLayout.SOUTH);



    }

}
