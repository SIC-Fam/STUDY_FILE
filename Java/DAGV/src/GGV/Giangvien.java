package GGV;

/**
 *
 * @author Lunatic
 */
public class Giangvien extends Person{
    protected String Donvi;
    protected int Soct;

    public Giangvien() {
        super();
        this.Donvi = Donvi;
        this.Soct = Soct;
    }

    public Giangvien(String MaDD, String Hoten, String GT, String Donvi, int Soct ) {
        super(MaDD, Hoten, GT);
        this.Donvi = Donvi;
        this.Soct = Soct;
    }

    public String getDonvi() {
        return Donvi;
    }

    public void setDonvi(String Donvi) {
        this.Donvi = Donvi;
    }

    public int getSoct() {
        return Soct;
    }

    public void setSoct(int Soct) {
        this.Soct = Soct;
    }
    @Override
    public String Xetthuong(int Soct) {
        if (Soct > 10) {
            return "Khen thưởng từ giảng viên: " + getHoten();
        } else {
            return "Không khen thưởng từ giảng viên: " + getHoten();
        }
    }
}
