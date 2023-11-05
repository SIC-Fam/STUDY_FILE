package GKH;

import com.sun.jdi.connect.spi.Connection;
/**
 *
 * @author Lunatic
 */
public class XLKH implements IKhachhang{
    private Connection cn;
    
    public XLKH(){
        cn =getCon();
    }
    
    @Override
    public Connection getCon(){
        return null;
    }
    
    public void insertKH(Khachhang khachhang) {
        
    }

    @Override
    public void insert(Khachhang kh) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    
}
