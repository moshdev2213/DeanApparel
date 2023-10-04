package apparels.DAO;
import apparels.Modal.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class SupplierDAO {
	private Connection connection;
	private String query;
    private PreparedStatement pst;
    private ResultSet rs;
    
    
    
    public SupplierDAO(Connection connection) {
    	
    	this.connection=connection;
    	
    }
    
    public List<GrnPay> getAllsupdata (){
        
        List<GrnPay> supdetail = new ArrayList<GrnPay>();
        
        try {
          
          query = "SELECT *\r\n"
          		+ "FROM grnpay\r\n"
          		+ "INNER JOIN supplier\r\n"
          		+ "ON grnpay.id = supplier.id\r\n"
          		+ "INNER JOIN grn\r\n"
          		+ "ON grn.supplierid = supplier.id;\r\n"
          		+ "";
          
          pst=this.connection.prepareStatement(query);
         
          rs= pst.executeQuery();
          
          
          while(rs.next()) {
            
            GrnPay row = new GrnPay();
            
           // row.setDid(rs.getInt("id"));email
            
            row.setEmail(rs.getString("email"));
            row.setTotal(rs.getString("total"));
            //row.setBalance(rs.getString("balance"));
            row.setDate(rs.getString("date"));
            row.setBankac(rs.getString("bankac"));
            row.setPayment(rs.getString("payment"));
           
        
            
            
            supdetail.add(row);
            
            
            
            
            
            
            
          }
          
          if(rs.next()) {
            
            
            System.out.println("executed");
          }else {
            System.out.println("fail");
            
          }
          
          
          
          
          
          
          
          
        } catch (Exception e) {
          e.printStackTrace();
        }
        
        
        return supdetail;
        
        
        
        
      }
	

	

}
