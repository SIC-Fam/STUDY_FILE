public class Test {
    public static void main(String[] args) {
        Circle c1 = new Circle();
        System.out.println("C1: The circle has radius of " + c1.getRadius() + " and area of "+ c1.getArea());

        Circle c2 = new Circle(2.0);
        System.out.println("\nC2: The circle has radius of " + c2.getRadius() + " and area of "+ c2.getArea());

        Circle c3 = new Circle(5.0, "blue");
        System.out.println("\nC3: The circle has radius of " + c3.getRadius() + " and color of "+ c3.getColor());

        // cannot access or assign value of radius directly because it is in private. We can get and set it by create new function such as getter: getRadius() and setter: setRadius()

        // setRadius() and setColor()
        c3.setRadius(10);
        c3.setColor("orange");
        System.out.println("\nC3: The circle has radius of " + c3.getRadius() + " and color of "+ c3.getColor());

        // with toString()
        Circle c4 = new Circle(20, "yellow");
        System.out.println("\n" + c4.toString());
        System.out.println("\nCalled implicitly: " + c4);
        System.out.println("\nOperator '+' invokes() toString too: "+ c4);

    }
}
