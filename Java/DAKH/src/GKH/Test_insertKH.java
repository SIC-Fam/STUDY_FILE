package GKH;
import java.util.Scanner;
/**
 *
 * @author Lunatic
 */
public class Test_insertKH{
    public static void doInsertKH() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Nhập Số tài khoản: ");
        int SoTK = sc.nextInt();
        sc.nextLine();
        System.out.print("Nhập Họ tên: ");
        String Hoten = sc.nextLine();
        System.out.print("Nhập Giới tính: ");
        String GT = sc.nextLine();
        System.out.print("Nhập Địa chỉ: ");
        String Diachi = sc.nextLine();
        System.out.print("Nhập Số dư tài khoản: ");
        float Sodu = sc.nextFloat();

        Khachhang kh = new Khachhang(SoTK, Hoten, GT, Diachi, Sodu);

        XLKH xuly = new XLKH();
        xuly.insertKH(kh);
    }

    public static void main(String[] args) {
        doInsertKH();
    }
}
