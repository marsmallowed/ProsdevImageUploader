package controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;

import model.dto.Picture;
import model.dto.PictureManager;
import model.dto.User;
import model.dto.UserManager;

public class Controller {

	private static User user;
	private static Controller controller;
	private UserManager userManager = new UserManager();
	private static PictureManager pictureManager = new PictureManager();
	
	public static Controller getController(){
		if(controller == null){
			controller = new Controller();
		}
		return controller;
	}
	
	public Boolean loginAccount(String username, String password)
	{
		user = userManager.getUserLogin(username, password);
		
		if(user.getPassword() != null && user.getUsername() != null)
			return true;
		return false;
	}
	
	public User getUser()
	{
		return user;
	}
	
	public static ArrayList<Picture>  getPictures()
	{
		return pictureManager.getPictures(user.getUsername());
	}
	
	public Boolean uploadPicture(FileInputStream input, File imgfile, String caption)
	{
		pictureManager.uploadPicture(user.getUsername(), input, imgfile, caption);
		return null;
	}
}
