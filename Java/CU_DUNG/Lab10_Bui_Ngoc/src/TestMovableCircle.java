public class TestMovableCircle {

    public static void main(String[] args) {
        Movable m1 = new MovablePoint(5,6,10);
        System.out.println(m1); //Movable Point: x:5, y: 6
        m1.moveLeft();
        System.out.println(m1);//Movable Point: x:-5, y: 6

        Movable m2 = new MovablePoint(2,1,2,20);
        System.out.println(m2);//Movable Point: x:2, y: 1
        m2.moveRight();
        System.out.println(m2);//Movable Point: x:4, y: 1
    }
}
