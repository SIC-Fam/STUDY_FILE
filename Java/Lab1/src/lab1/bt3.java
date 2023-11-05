import java.util.*;
import java.io.*;
public class bt3 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Nhập mã sinh viên: ");
        String s = sc.nextLine();
        System.out.print("Nhập họ và tên: ");
        String s1 = sc.nextLine();
        System.out.print("Nhập tuổi: ");
        int n = sc.nextInt();
        System.out.print("Nhập năm sinh: ");
        int n1 = sc.nextInt();
        System.out.print("Nhập điểm trung bình: ");
        float f = sc.nextFloat();
        System.out.println("---------------------------------");
        System.out.println("Thông tin sinh viên: ");
        System.out.println("Mã sinh viên: "+s);
        System.out.println("Họ và tên: "+s1);
        System.out.println("Tuổi: "+n);
        System.out.println("Năm sinh: "+n1);
        System.out.println("Điểm trung bình: "+f);

    }
}
