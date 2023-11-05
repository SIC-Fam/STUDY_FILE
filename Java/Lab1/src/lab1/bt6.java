import java.util.*;

public class bt6 {
    public static Scanner sc = new Scanner(System.in);
    public static void main (String[] args) {
        System.out.print("Nhập n: ");
        int n = sc.nextInt();
        System.out.print("Các số nguyên tố nhỏ hơn n là: ");
        for (int i=0; i<n; i++) {
            isPrime(i);
        }
    }

    public static void isPrime(int n) {
        if (n < 2) return;
        for (int i=2; i<=Math.sqrt(n); i++) {
            if (n%i == 0) return;
        }
        System.out.print(n + " ");
    }
}
