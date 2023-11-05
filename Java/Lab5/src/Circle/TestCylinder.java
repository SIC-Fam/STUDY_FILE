package Circle;

public class TestCylinder {
    public static void main(String[] args) {
        Cylinder cy1 = new Cylinder();
        System.out.println("Cylinder: "
                + ", Radius is " + cy1.getRadius()
                + ", Height is " + cy1.getHeight()
                + ", Base area is " + cy1.getArea()
                + ", Volume is " + cy1.getVolume());

        Cylinder cy2 = new Cylinder(5.0, 2.0);
        System.out.println("Cylinder: "
                + ", Radius is " + cy1.getRadius()
                + ", Height is " + cy2.getHeight()
                + ", Base area is " + cy2.getArea()
                + ", Volume is " + cy2.getVolume());

        System.out.println(cy2.toString());


    }
}
