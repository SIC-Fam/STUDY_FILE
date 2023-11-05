/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bt2;

import javax.swing.JDialog;

/**
 *
 * @author Lunatic
 */
public class DemoJDialog extends JDialog {
    public DemoJDialog(){
        setTitle("Demo JDialog");
        setSize(300, 200);
        setDefaultCloseOperation(DISPOSE_ON_CLOSE);
        setResizable(false);
    }
    public static void main(String[] args) {
        new DemoJDialog().setVisible(true);
    }
}
