package controller;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dto.PictureManager;
import model.dto.Picture;

/**
 * Servlet implementation class ViewImageServlet
 */
@WebServlet("/ViewImageServlet")
public class ViewImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewImageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PictureManager pm = new PictureManager();
		
		int id = Integer.parseInt(request.getParameter("id"));
//		String username = request.getParameter("username");
		
		Blob imageBlob = pm.getImageBlob(id);
		
//		ArrayList<Picture> myPictures = new ArrayList<Picture>();
//		myPictures = pm.getPictures(username);
		
		byte[] imgData = null;
		try {
			imgData = imageBlob.getBytes(1, (int)imageBlob.length());
			System.out.println(imgData);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
  	  	response.setContentType("image/jpg");
        OutputStream o = response.getOutputStream();
        o.write(imgData);
        o.flush(); 
        o.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
