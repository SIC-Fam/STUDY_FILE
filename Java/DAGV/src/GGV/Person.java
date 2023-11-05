package GGV;

/**
 *
 * @author Lunatic
 */
public abstract class Person {
    protected String MaDD;
    protected String Hoten;
    protected String GT;
    public Person (){
        this.MaDD = MaDD;
        this.Hoten = Hoten;
        this.GT = GT;
    }
    public Person(String MaDD, String Hoten, String GT) {
        this.MaDD = MaDD;
        this.Hoten = Hoten;
        this.GT = GT;
    }

    public String getMaDD() {
        return MaDD;
    }

    public void setMaDD(String MaDD) {
        this.MaDD = MaDD;
    }

    public String getHoten() {
        return Hoten;
    }

    public void setHoten(String Hoten) {
        this.Hoten = Hoten;
    }

    public String getGT() {
        return GT;
    }

    public void setGT(String GT) {
        this.GT = GT;
    }
    //Virtual Method
    public String Xetthuong (int Soct) {
        if (Soct > 10) {
            return "Khen thưởng";
        } else {
            return "Không khen thưởng";
        }
    }
}
