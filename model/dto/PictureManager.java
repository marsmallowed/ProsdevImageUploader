package model.dto;


import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
	
	public ArrayList<Picture>  getPictures(String username)
	{
		ArrayList<Picture> pictureList = new ArrayList<>();
		//TODO get all pictures of the username from DB
		
		return pictureList;
	}

}
