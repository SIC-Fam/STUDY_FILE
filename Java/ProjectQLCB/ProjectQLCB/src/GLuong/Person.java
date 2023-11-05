package GLuong;

public class Person {
    private int MaNV;
    private String HoTen;

    public Person() {
    }

    public Person(int MaNV, String HoTen) {
        this.MaNV = MaNV;
        this.HoTen = HoTen;
    }

    public int getMaNV() {
        return MaNV;
    }

    public void setMaNV(int maNV) {
        MaNV = maNV;
    }

    public String getHoTen() {
        return HoTen;
    }

    public void setHoTen(String hoTen) {
        HoTen = hoTen;
    }
}
