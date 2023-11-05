/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bt4;

import java.awt.FlowLayout;
import javax.swing.JButton;
import javax.swing.JFrame;

/**
 *
 * @author Lunatic
 */
public class DemoFlowLayout extends JFrame{
    public DemoFlowLayout() {
        setTitle("FlowLayout");
        setSize(300, 250);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        setResizable(false);
        setLayout(new FlowLayout());
        for (int i = 1; i <= 20; i++) {
            add(new JButton("Button" +i));
        }
    }
    public static void main(String[] args) {
        new DemoFlowLayout().setVisible(true);
    }
}
