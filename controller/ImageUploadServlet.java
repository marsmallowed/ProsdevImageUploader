package controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import model.dto.Picture;

/**
 * Servlet implementation class ImageUploadServlet
 */
@MultipartConfig(maxFileSize = 16177215)

@WebServlet("/ImageUploadServlet")
public class ImageUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ImageUploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		 InputStream input = null;
//		 Part filePart = request.getPart("photo");
		String strpath = request.getParameter("photo");
		File imgfile = new File(strpath);
		FileInputStream fin = new FileInputStream(imgfile);
		 String caption = request.getParameter("caption");
//		 if(filePart != null)
//		 {
//			 System.out.println(filePart.getName());
//	         System.out.println(filePart.getSize());
//	         System.out.println(filePart.getContentType());
//	         
//	         //check ContentType if jpeg or png
//	         if(filePart.getContentType().equals("image/png") || filePart.getContentType().equals("image/jpg"))
//	        	 input = filePart.getInputStream();
//	         
//		 }
		 
//		 if(input != null)
			 if(Controller.getController().uploadPicture(fin, imgfile, caption))
				 System.out.println("Success upload");
		 
		 ArrayList<Picture> myPictures = Controller.getPictures();
		 HttpSession session = request.getSession();		
		 session.setAttribute("myPictures", myPictures);
		 
		 request.getRequestDispatcher("home.jsp").forward(request, response);
	}

}
