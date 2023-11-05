import java.util.*;
import java.io.*;
import java.lang.Math;
public class bt5 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Nhập a: ");
        int a = sc.nextInt();
        System.out.print("Nhập b: ");
        int b = sc.nextInt();
        System.out.print("USCLN của "+a+" và "+b+" là: "+USCLN(a,b));
        System.out.print("\nBSCNN của "+a+" và "+b+" là: "+BSCNN(a,b));
    }
    public static int USCLN(int a, int b){
        if (b==0) return a;
        return USCLN(b,a%b);
    }
    public static int BSCNN(int a, int b){
        return (a*b)/USCLN(a,b);
    }
}