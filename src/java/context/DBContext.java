package contex;

import entity.Product;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBContext {
    protected Connection connection;
  Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public DBContext() {
        try {
            String user = "sa";
            String pass = "12345678";
            String url = "jdbc:sqlserver://DAINHO:1433;databaseName=Wish";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, pass);
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        
        }
       
    
    }
    public Connection getConnection() {
        return connection;
    }
  
    public static void main(String[] args) {
        DBContext db = new DBContext();
        System.out.println("connect");
      //   System.out.println(db.getProductByCID(cid));
    }
}
