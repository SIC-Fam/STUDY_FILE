/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bt1;

import javax.swing.JFrame;

public class DemoJFrame extends JFrame{
    public DemoJFrame() {
        setTitle("Demo JFrame");
        setSize(300, 200);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        setResizable(false);
    }
    public static void main(String[] args) {
        new DemoJFrame().setVisible(true);
    }
}
