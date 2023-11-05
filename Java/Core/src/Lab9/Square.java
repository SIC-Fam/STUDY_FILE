package Lab9;

public class Square extends Rectangle {
private double side;

    public Square(){}
    public Square(double side){
        this.side = side;
    }
    public Square(double side, String color, Boolean filled){
        super();
        this.side = side;
    }

    public double getSide(){
        return side;
    }
    public void setSide(double side){
        this.side = side;
    }

    public double setWidth(){
        return side;
    }

    public double setLength(){
        return side;
    }

    @Override
    public String toString() {
        return "Square[side=" + side + ",color=" + getColor() + ",filled=" + isFilled() + "]";
    }
}
