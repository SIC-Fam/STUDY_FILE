package Pac1;

public class Cat extends Animals { // Cat gọi là lớp con, Animals gọi là lớp cha
    int otherCat;
    public Cat(){ //Luôn luôn call constructor trước khi gọi constructor lớp con
        super(7); //Gọi constructor của lớp cha
        System.out.println("Create Cat");
    }
    @Override
    void sound (){ //Override method sound của lớp cha -> Đa hình động
        System.out.println("Meo Meo");
    }
    void somethingCat(){ //Định nghĩa thêm method mà lớp cha khum có
        System.out.println("Đây là con mèo");
    }
    void somethingCat(int a){ //Overload -> Đa hình tĩnh
        System.out.println("Đây là con mèo");
    }
}
