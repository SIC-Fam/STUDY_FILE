import javax.swing.*;
import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;
public class DemoButton extends Applet implements ActionListener {
    private Button blueButton;
    private Button whiteButton;
    private Button helloButton;

    public void init() {
        blueButton = new Button("Blue");
        whiteButton = new Button("White");
        helloButton = new Button("Hello");
        blueButton.addActionListener(this);
        whiteButton.addActionListener(this);
        helloButton.addActionListener(this);
        add(blueButton);
        add(whiteButton);
        add(helloButton);
    }

    public void actionPerformed(ActionEvent event) {
        if (event.getSource() == helloButton) javax.swing.JOptionPane.showMessageDialog(this, "Hello !");
        else {
            repaint();
        }
        if (event.getSource() == blueButton) this.setBackground(Color.BLUE);
        else if (event.getSource() == whiteButton) this.setBackground(Color.WHITE);
    }

    public static void main(String[] args) {
        javax.swing.SwingUtilities.invokeLater(new Runnable() {
            public void run() {
                JFrame frame = new JFrame("Button Demo");
                frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
                frame.setLocation(300,300);
                frame.setSize(400, 500);

                //Create and set up the content pane.
                DemoButton btnDemo = new DemoButton();
                btnDemo.init(); //content panes must be opaque
                frame.add(btnDemo);

                //Display the window.
                frame.setVisible(true);
            }
        });
    }
}