package user;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;


public class UserDAO {
    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;
    
    public UserDAO() {
    	try {
    		String dbURL = "jdbc:mysql://localhost:3306/BBS?serverTimezone=UTC";
    		String dbID = "root";
    		String dbPassword = "root";
    		Class.forName("com.mysql.cj.jdbc.Driver");
    		conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
    }
    
    public int login(String id, String passwd) {
    	String SQL = "SELECT passwd FROM member WHERE id = ?";
    	try {
    		pstmt = conn.prepareStatement(SQL);
    		pstmt.setString(1, id);
    		rs = pstmt.executeQuery();
    		if (rs.next()) {
    			if(rs.getString(1).equals(passwd)) {
    				return 1;
    			}
    			else 
    				return 0;
    		}
    		return -1;
    	} catch (Exception e) {
    		e.printStackTrace();
    	}
    	return -2;
    }
    
}
