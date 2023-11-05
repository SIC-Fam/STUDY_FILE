package Circle;

public class Circle {
    protected double radius = 1.0;
    protected String color = "red";

    public Circle() {
    }

    public Circle(double r) {
        this.radius = r;
    }

    public double getRadius() {
        return this.radius;
    }

    public double getArea() {
        return Math.PI * Math.pow(this.radius, 2);
    }
    public String toString() {
        return "Circle[radius=" + this.radius+ "]";
    }
}
