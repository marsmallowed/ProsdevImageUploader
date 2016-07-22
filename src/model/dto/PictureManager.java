package model.dto;


import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.db.DBConnection;

public class PictureManager {
	
	public boolean uploadPicture(String username, InputStream input, String caption, long size)
	{
		int count = 0;
		try {
            Connection conn = DBConnection.getConnection();
            
            PreparedStatement pstmt = conn.prepareStatement("INSERT INTO image (description, userid, image) values (?, ?, ?)");

            pstmt.setString(1, caption);
            pstmt.setString(2, username);
            System.out.println("input = " + input);
            if (input != null) {
            	pstmt.setBlob(3, input, size);
            }
            
            count = pstmt.executeUpdate();
			conn.close();
			pstmt.close();
        } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return (count > 0);
	}
	
	public Blob getImageBlob(int id)
	{
	    Blob imageBlob = null;
	    
		try
		{
		    Connection conn = DBConnection.getConnection();
	        
	        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM image WHERE id = ?");
	
	        pstmt.setInt(1, id);
	    
	        ResultSet rs = pstmt.executeQuery();
	        
	        if(rs.next()){
	        	imageBlob = rs.getBlob("image");
	        }
	        
			conn.close();
			pstmt.close();
	    } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	return imageBlob;
	
	}
	
	public ArrayList<Picture>  getPictures(String username)
	{
		ArrayList<Picture> pictureList = new ArrayList<>();
		
		try {
            Connection conn = DBConnection.getConnection();
            
            PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM image WHERE userid = ?");

            pstmt.setString(1, username);
        
            ResultSet rs = pstmt.executeQuery();
            
            while(rs.next()){
				pictureList.add(new Picture(rs.getInt("id"), rs.getString("userid"), rs.getString("description"), rs.getBlob("image")));
			}
            
			conn.close();
			pstmt.close();
        } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return pictureList;
	}
	
	public boolean deletePicture(int id)
	{
		ArrayList<Picture> pictureList = new ArrayList<>();
		
		try {
            Connection conn = DBConnection.getConnection();
            
            PreparedStatement pstmt = conn.prepareStatement("DELETE FROM image WHERE id = ?");

            pstmt.setInt(1, id);
        
            int row = pstmt.executeUpdate();
            
//            while(rs.next()){
//				pictureList.add(new Picture(rs.getInt("id"), rs.getString("userid"), rs.getString("description"), rs.getBlob("image")));
//			}
            
			conn.close();
			pstmt.close();
        } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
		return true;
	}

}
