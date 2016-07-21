package model.dto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.db.DBConnection;

public class UserManager {
	public UserManager(){}
	
	public User getUserLogin(String username, String password){
		
		User user = null;
		
		try{
			user= new User();
			
			Connection conn = DBConnection.getConnection();
			
			PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM users WHERE username = ? AND password = ?");
			
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()){
				user.setUsername(rs.getString(User.COLUMN_USERNAME));
				user.setPassword(rs.getString(User.COLUMN_PASSWORD));
			}
			conn.close();
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
		
	}
	
	public User getUser(String username){
		
		User user = null;
		
		try{
			user= new User();
			
			Connection conn = DBConnection.getConnection();
			
			PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM users WHERE username = ?");
			
			pstmt.setString(1, username);
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()){
				user.setUsername(rs.getString(User.COLUMN_USERNAME));
			}
			conn.close();
			pstmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
		
	}
	
	public boolean registerUser(User user){
		//INSERT INTO `db_image_uploader`.`user` (`username`, `password`) VALUES ('teddyian', 'password');
		int count = 0;
		
		try{
			Connection conn = DBConnection.getConnection();
			
			PreparedStatement pstmt = conn.prepareStatement("INSERT INTO `db_image_uploader`.`user` (`username`, `password`) VALUES (?, ?)");
			
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getPassword());
			count = pstmt.executeUpdate();
			conn.close();
			pstmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return (count > 0);
	}

}
