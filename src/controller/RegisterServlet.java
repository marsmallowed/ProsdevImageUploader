package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.dto.PictureManager;
import model.dto.User;
import model.dto.UserManager;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
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
		// TODO Auto-generated method stub
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String cfmpassword = request.getParameter("cfmpassword");
		
		UserManager udb = new UserManager();
		PictureManager pdb = new PictureManager();
		
		if(udb.checkUser(username)){
			System.out.println("Username is not available.");
			//console.log("Username is not available.");
			response.sendRedirect("index.jsp");
		}
		else if(password.length() < 6 || password.length() > 15){
			System.out.println("Password must be 6-15 characters.");
			response.sendRedirect("index.jsp");
		}
		else if(!(password.equals(cfmpassword))){
			System.out.println("Passwords do not match.");
			response.sendRedirect("index.jsp");
		}
		else {	//else if all are ok
			User newUser = new User(username, password);
			if(udb.registerUser(newUser)){
				//udb.registerAccount(username, password);
				System.out.println("Successfully registered");
				response.sendRedirect("index.jsp");
			}
			else{
				System.out.println("Failed to register. Please try again.");
				response.sendRedirect("index.jsp");
			}
		}
		
//		if(udb.registerAccount(username, password))
//		{	
//			
//			/**
//			 *register account or add account
//			 * int registerAccount(username, password) should be:
//			 * {
//			 * 		//check if username is valid and available
//			 * 		//check if password is valid
//			 * 		//add account to the list of accounts (db)
//			 * }
//			 **/
//			System.out.println("Successfully registered");
//			
//			//forces the user to log in his account after registering
//			  response.sendRedirect("index.jsp");
//		    //request.getRequestDispatcher("index.jsp").forward(request, response);
			
//			
//		}
//		else
//		{	
//			//TODO: different error messages for different reasons of registration failure
//			System.out.println("Failed to register");
//			response.sendRedirect("index.jsp");
//		}
		
		
	}

}
