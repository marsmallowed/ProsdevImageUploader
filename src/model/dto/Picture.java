package model.dto;

import java.sql.Blob;


public class Picture {
	
	private int id;
	private String caption;
	private Blob image;
	private String userid;
	
	public Picture(int id, String userid, String caption, Blob image)
	{
		this.id = id;
		this.userid = userid;
		this.caption = caption;
		this.image = image;
	}
	
	public String getCaption()
	{
		return caption;
	}
	
	public Blob getImage()
	{
		return image;
	}

	public int getId()
	{
		return id;
	}
}
