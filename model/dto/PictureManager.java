package model.dto;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import model.db.DBConnection;

public class PictureManager {
	
	public boolean uploadPicture(String username, FileInputStream input, File imgfile ,String caption)
	{
		int count = 0;
		try {
            Connection conn = DBConnection.getConnection();
            
            PreparedStatement pstmt = conn.prepareStatement("INSERT INTO image (image, desc, userid) values (?, ?, ?)");

            if (input != null) {
            	pstmt.setBinaryStream(1,input,(int)imgfile.length());
            }
            pstmt.setString(2, caption);
            pstmt.setString(3, username);

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
