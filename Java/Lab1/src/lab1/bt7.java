import java.util.*;
import java.lang.Math;
public class bt7 {
    public static Scanner sc = new Scanner(System.in);
    public static void main (String[] args) {
        int [] a;
        int n=0;

        System.out.print("Nhập n: ");
        n = sc.nextInt();
        a = new int[n];
        for (int i=0; i<n; i++) {
            System.out.print("Nhập phần tử thứ " + (i+1) + ": ");
            a[i] = sc.nextInt();
        }

        System.out.print("Mảng vừa nhập là: ");
        for (int i=0; i<n; i++) {
            System.out.print(a[i] + " ");
        }
        System.out.println();
        System.out.print("Các số nguyên tố trong mảng là: ");
        for (int i=0; i<n; i++) {
            isPrime(a[i]);
        }
        System.out.println();
        System.out.print("Phần tử lớn nhất trong mảng là: ");
        max(a);
        System.out.print("Số lượng các số chính phương trong mảng là: ");
        countSquare(a);
        System.out.print("Mảng sau khi đã sắp xếp tăng dần: ");
        sort(a);
    }
        public static void isPrime(int n) {
            if (n < 2) return;
            for (int i=2; i<=Math.sqrt(n); i++) {
                if (n%i == 0) return;
            }
            System.out.print(n + " ");
        }

        public static void max(int [] a) {
            int max = a[0];
            for (int i=1; i<a.length; i++) {
                if (a[i] > max) max = a[i];
            }
            System.out.println(max);
        }

        public static void countSquare(int [] a) {
            int count = 0;
            for (int i=0; i<a.length; i++) {
                if (Math.sqrt(a[i]) == (int)Math.sqrt(a[i])) count++;
            }
            System.out.println(count);
        }

        public static void sort(int [] a) {
            Arrays.sort(a);
            for (int i=0; i<a.length; i++) {
                System.out.print(a[i] + " ");
            }

        }
}
