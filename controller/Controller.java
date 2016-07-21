package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dto.UserManager;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}
	
	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getParameter("url");
		
		switch(url){
//			case "login": User user = new UserManager().getUserLogin(request.getParameter("username"), request.getParameter("password"));
//						Gson g = new Gson();
//						String userJson = g.toJson(user);
//						response.getWriter().write(userJson);
//						break;
//			case "register": response.getWriter().write(new Gson().toJson(new UserManager().registerUser(new User(request.getParameter(User.COLUMN_FNAME), request.getParameter(User.COLUMN_LNAME), request.getParameter(User.COLUMN_USERNAME), request.getParameter(User.COLUMN_EMAIL), request.getParameter(User.COLUMN_PASSWORD), request.getParameter(User.COLUMN_NUMBER)))));
//						break;
		}
	}
}
