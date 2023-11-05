package learngui;

import java.awt.*;

/**
 *
 * @author Lunatic
 */
public class QLNV2 extends Frame {
    Frame f;
    Label lbName;
    Button bClick;
    TextField txtName;
    public void QLNV2() {
        f = new Frame();
        lbName = new Label("Họ tên: ", Label.CENTER);
//        Color c = new Color(100, 200, 150);
//        lbName.setForeground(c);
        lbName.setForeground(Color.red);
        lbName.setBackground(Color.yellow);
        lbName.setSize(100, 30);
        lbName.setLocation(50,30);
        
        
        bClick = new Button("Nhấn");
        bClick.setSize(100, 30);
        bClick.setLocation(50,130);
        bClick.setBackground(Color.red);
        bClick.addActionListener(new XLEV());

        
        f.addWindowListener(new XLEV());



        txtName = new TextField("", 20);
        txtName.setBackground(Color.red);
        txtName.setBackground(Color.orange);
        txtName.setSize(100, 30);
        txtName.setLocation(250,30);
        
        f.add(lbName);
        f.add(txtName);
        f.add(bClick);

        
        FlowLayout layout = new FlowLayout(FlowLayout.LEFT,5,20);
        f.setLayout(layout);
        f.setSize(400, 250);
        f.setLocation(500,300);
        f.setVisible(true);
    }
}
