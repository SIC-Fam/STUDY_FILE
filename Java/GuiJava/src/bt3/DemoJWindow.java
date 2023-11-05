/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bt3;


import java.awt.Color;
import javax.swing.JWindow;

/**
 *
 * @author Lunatic
 */
public class DemoJWindow extends JWindow {
    public DemoJWindow(){
        setSize(300, 200);
    }
    public static void main(String[] args) {
        new DemoJWindow().setVisible(true);
    }
}
