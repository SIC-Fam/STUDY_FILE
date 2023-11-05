package GGV;

import java.util.ArrayList;
import java.util.Scanner;

public class XLGV {
    public ArrayList<Giangvien> danhsachGiangVien;

    public XLGV() {
        danhsachGiangVien = new ArrayList<>();
    }

    public void getCon(int n) {
        Scanner scanner = new Scanner(System.in);
        for (int i = 0; i < n; i++) {
            System.out.println("Nhập thông tin giảng viên thứ " + (i + 1) + ":");
            System.out.print("Mã định danh: ");
            String MaDD = scanner.nextLine();
            System.out.print("Họ tên: ");
            String Hoten = scanner.nextLine();
            System.out.print("Giới tính: ");
            String GT = scanner.nextLine();
            System.out.print("Đơn vị công tác: ");
            String Donvi = scanner.nextLine();
            System.out.print("Số công trình: ");
            int Soct = Integer.parseInt(scanner.nextLine());

            Giangvien giangVien = new Giangvien(MaDD, Hoten, GT, Donvi, Soct);
            danhsachGiangVien.add(giangVien);
        }
        scanner.close();
    }

    public ArrayList<Giangvien> getDanhSachGiangVien() {
        return danhsachGiangVien;
    }
}
