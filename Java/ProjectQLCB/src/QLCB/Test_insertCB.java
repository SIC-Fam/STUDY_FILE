/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package QLCB;

//import java.awt.Frame;
import java.util.Scanner;

/**
 *
 * @author Lunatic
 */
public class Test_insertCB{
        static QLCB qlcb;

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        QLCB qlcb = new QLCB();
        Scanner sc = new Scanner(System.in);
        System.out.print("Nhập số tài khoản: ");
        int SoTK = sc.nextInt();
        sc.nextLine();
        System.out.print("Nhập họ tên: ");
        String Hoten = sc.nextLine();
        System.out.print("Nhập giới tính: ");
        String GT = sc.nextLine();
        System.out.print("Nhập địa chỉ: ");
        String Diachi = sc.nextLine();
        System.out.print("Nhập lương: ");
        int Luong = sc.nextInt();
        qlcb.getCon();
//        new GuiInsertCB().setVisible(true);
    }
    private static void doInsertCB(int SoTK, String Hoten, String GT, String Diachi, int Luong) {
        QLCB qlcb = new QLCB();
        qlcb.insertCB(SoTK, Hoten, GT, Diachi, Luong);
    }

    
}
