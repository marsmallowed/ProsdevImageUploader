package model.dto;

public class User {
	
	public static String COLUMN_USERNAME = "user_id";
    public static String COLUMN_PASSWORD = "user_pw";
    
	private String username;
	private String password;
	
	public User(){}
	
	public User(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public Boolean addPhoto()
	{
		return true;
	}
}
