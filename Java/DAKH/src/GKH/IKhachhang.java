package GKH;

import com.sun.jdi.connect.spi.Connection;
/**
 *
 * @author Lunatic
 */
public interface IKhachhang {
    Connection getCon();
    public void insert(Khachhang kh);
}
