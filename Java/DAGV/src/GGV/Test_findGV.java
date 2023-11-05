package GGV;

import java.util.ArrayList;
import java.util.Scanner;

public class Test_findGV {
    public static void dogetGV(ArrayList<Giangvien> danhSachGiangVien, String Donvi, int Soct) {
        System.out.println("Danh sách giảng viên có đơn vị công tác " + Donvi + " và số công trình " + Soct + ":");
        boolean coGiangVien = false;
        for (Giangvien giangVien : danhSachGiangVien) {
            if (giangVien.getDonvi().equalsIgnoreCase(Donvi) && giangVien.getSoct() == Soct) {
                System.out.println("Mã định danh: " + giangVien.getMaDD());
                System.out.println("Họ tên: " + giangVien.getHoten());
                System.out.println("Đơn vị công tác: " + giangVien.getDonvi());
                System.out.println("Số công trình: " + giangVien.getSoct());
                System.out.println("Kết quả xét thưởng: " + giangVien.Xetthuong(Soct));
                System.out.println("---------------------");
                coGiangVien = true;
            }
        }
        if (!coGiangVien) {
            System.out.println("Không có giảng viên nào phù hợp với điều kiện.");
        }
    }

    public static void main(String[] args) {
        XLGV xlgv = new XLGV();
        xlgv.getCon(1); // Nhập thông tin của 3 giảng viên

        Scanner scanner = new Scanner(System.in);
        System.out.print("Nhập đơn vị công tác: ");
        String Donvi = scanner.nextLine();
        System.out.print("Nhập số công trình: ");
        int Soct = Integer.parseInt(scanner.nextLine());

        dogetGV(xlgv.danhsachGiangVien, Donvi, Soct);
        scanner.close();
    }
}
