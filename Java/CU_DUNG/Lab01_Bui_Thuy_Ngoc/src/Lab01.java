import java.util.Scanner;
import java.time.LocalDateTime;

public class Lab01 {
    // Bui Thuy Ngoc 2151062838
    static boolean is_Prime(int n) {
        if (n <= 3){ return n > 1;}
        else if (n % 2 == 0 || n%3 ==0) {
            return false;
        }

        int i = 5;
        while (i*i <= n) {
            if (n % i == 0 || n%(i+2) == 0)
                return false;
            i = i + 6;
        }
        return true;
    }

    static boolean is_Square(int x) {
        double square = Math.sqrt((double) x);
        return Math.floor(square) == Math.ceil(square);
    }

    static int find_UCLN(int x , int y) {
        if (x > y) {
            int temp = x;
            x = y;
            y = temp;
        }

        for (int i = y; i >=1 ; i ++) {
            if ( i % x == 0) {
                return i;
            }

        }
        return 1;
    }

    static int find_BCNN(int x, int y) {
        int i = 1;

        if (x > y) {
            int temp = x;
            x = y;
            y = temp;
        }

        if (y % x == 0) {
            return y;
        }

        while (true) {
            i++;
            if ((y * i) % x ==0) {
                return y * i;
            }
        }
    }

    static void sort(int a[]) {
        int tg, n = a.length;
        for(int i = 0; i < n - 1; i++){
            for(int j = i + 1; j < n; j++){
                if(a[i] > a[j]){
                    tg = a[i];
                    a[i] = a[j];
                    a[j] = tg;
                }
            }
        }
    }

    static void Bai2(String name) {
        System.out.println("Hello! I'm " + name +"\nThis is my first java project");
    }

    static void Bai3() {
        Scanner scanner = new Scanner(System.in);
        LocalDateTime dtime = LocalDateTime.now();

        String maSV, hoTen;
        int namSinh;
        float diemTB;

        System.out.println("Moi ban nhap ma Sinh Vien: ");
        maSV = scanner.nextLine();
        System.out.println("Moi ban nhap ho ten: ");
        hoTen = scanner.nextLine();
        System.out.println("Moi ban nhap nam sinh: ");
        namSinh = Integer.parseInt(scanner.nextLine());
        System.out.println("Moi ban nhap diem trung binh: ");
        diemTB = Float.parseFloat(scanner.nextLine());

        System.out.println("Ma SV = " + maSV);
        System.out.println("Ho ten = " + hoTen);
        System.out.println("Nam sinh = " + namSinh);
        System.out.println("Tuoi = " + (dtime.getYear() - namSinh));
        System.out.println("Diem trung binh = " + diemTB);
    }

    static void Bai4() {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Nhap vao so nguyen x = ");
        int x = Integer.parseInt(scanner.nextLine());
        System.out.println("Nhap vao so nguyen y = ");
        int y = Integer.parseInt(scanner.nextLine());

        System.out.println("Tong 2 so = " + (x + y));
        System.out.println("Hieu 2 so = " + (x - y));
        System.out.println("Tich 2 so = " + (x * y));
        System.out.println( (y == 0 ? "Khong the tinh thuong 2 so do y = 0" : ("Thuong 2 so = " + x / y)));
    }



    static void Bai5() {
        Scanner scanner = new Scanner(System.in);
        int x = 0, y = 0;
        while(x <= 0) {
            System.out.println("Nhap vao so nguyen duong x = ");
            x = Integer.parseInt(scanner.nextLine());
        }

        while(y <= 0) {
            System.out.println("Nhap vao so nguyen duong y = ");
            y = Integer.parseInt(scanner.nextLine());
        }

        System.out.println("BCNN = "  + find_BCNN(x , y));
        System.out.println("UCLN = "  + find_UCLN(x , y));

    }



    static void Bai6() {
        Scanner scanner = new Scanner(System.in);
        int x;
        do {
            System.out.println("Nhap so nguyen duong x = ");
            x = Integer.parseInt(scanner.nextLine());
        } while(x<=0);

        System.out.println("Cac so nguyen to nho hon "+ x+ "la: ");
        for (int i = 0; i< x; i++) {
            if (is_Prime(i) ) {
                System.out.print(i+ " ");
            }
        }
    }

    static void Bai7(){
        Scanner scanner = new Scanner(System.in);
        int n, SLN;
        do {
            System.out.println("Nhap so n = ");
            n = Integer.parseInt(scanner.nextLine());
        } while(n<=0);
        int A[] = new int[n];
        SLN = A[0];

        //  nhap
        for (int i = 0 ; i<n ; i++) {
            System.out.println("Nhap A["+i+"] = ");

            A[i] = Integer.parseInt(scanner.nextLine());

            if (A[i] > SLN) {
                SLN = A[i];
            }
        }

        //  a
        System.out.println("a. Cac so nguyen to: ");
        for (int i = 0 ; i<n ; i++) {
            if (is_Prime(A[i]) ) {
                System.out.print(A[i]+ " ");
            }
        }

        //  b
        System.out.println("\nb. Phan tu lon nhat trong mang la: " + SLN);

        //  c
        int isSCP = 0;
        for (int i = 0 ; i<n ; i++) {
            if (is_Square(A[i]) ) {
                isSCP ++;
            }
        }
        System.out.println("\nc. So so chinh phuong: "+ isSCP);

        //  d
        System.out.println("\nd. Sap xep day theo tang dan:");

        sort(A);
        for (int i = 0 ; i<n ; i++) {
            System.out.println(A[i]+ "");
        }
    }

    static public final int B = 5;
    static public  int[] A = {1,2,3,4};


    public static void main(String[] arg) {
        String luachon="";
        Scanner scanner = new Scanner(System.in);

        System.out.println("\n2. Viết chương trình xuất ra màn hình các thông tin sau. “Hello! I’m <your name>.”\n" +
                "“This is my first java program.”");
        System.out.println("\n3. Viết chương trình: Nhập các thông tin của 1 sinh viên gồm mã sinh viên, họ tên, tuổi, năm sinh, điểm trung bình. Xuất các thông tin ra màn hình (hãy sử dụng kiểu dữ liệu thích hợp).");
        System.out.println("\n4. Viết chương trình: Nhập vào hai số nguyên x, y. Xuất ra màn hình tổng, hiệu, tích, thương của hai số trên.");
        System.out.println("\n5. Viết chương trình sử dụng hàm: Nhập vào 2 số nguyên dương a, b. Tìm USCLN và BSCNN của a và b.");
        System.out.println("\n6. Viết chương trình sử dụng hàm: Nhập số nguyên dương n, liệt kê các số nguyên tố nhỏ hơn n.");
        System.out.println("\n7. Viết chương trình sử dụng hàm:\n" +
                "\uF0FC Nhập 1 mảng các số nguyên từ bàn phím. \uF0FC Xuất các phần tử là nguyên tố\n" +
                "\uF0FC Tìm phần tử lớn nhất trong mảng.\n" +
                "\uF0FC Đếm các phần tử là số chính phương\n" +
                "\uF0FC Sắp xếp mảng tăng dần.");
        System.out.println("\n8. Thoat");
        System.out.println("\n\nMoi nhap lua chon cua ban: ");
        luachon = (String) scanner.nextLine();
        switch (luachon){
            case ("2"): {
                System.out.println("\n\nTen cua ban: ");
                String name = scanner.nextLine();
                Bai2(name);
                break;
            }
            case ("3"): {Bai3();break;}
            case ("4"): {Bai4();break;}
            case ("5"): {Bai5();break;}
            case ("6"): {Bai6();break;}
            case ("7"): {Bai7();break;}
            default:break;
        }
    }
}
