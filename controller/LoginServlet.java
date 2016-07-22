package controller;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.dto.Picture;
import model.dto.User;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet()
    {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println(username);
		System.out.println(password);
		
//		if(udb.loginAccount(username, password))
		if(Controller.getController().loginAccount(username, password))
		{
			System.out.println("LOG IN SUCCESS");
//			ArrayList<User> allUsers = udb.getAllUsers();
			User user = Controller.getController().getUser();
			
			ArrayList<Picture> myPictures = Controller.getPictures();
			
//			for(int i = 0 ; i < myPictures.size() ; i++ )
//		 	{
//		 		System.out.println("Description:" + myPictures.get(i).getDescription());
//		 	}
			
			HttpSession session = request.getSession();			
			session.setAttribute("user", user);
//			session.setAttribute("usersList", allUsers);
			session.setAttribute("myPictures", myPictures);
			
		    request.getRequestDispatcher("home.jsp").forward(request, response);
			
		}
		else
		{
			System.out.println("LOG IN FAIL");
			response.sendRedirect("index.jsp");
		}
	}

}
