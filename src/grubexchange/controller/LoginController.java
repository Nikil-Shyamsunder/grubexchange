package grubexchange.controller;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import grubexchange.business.Grub;
import grubexchange.business.User;
import grubexchange.db.GrubDB;
import grubexchange.db.UserDB;

/**
 * Servlet implementation class SignUpController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = null;
		System.out.println("LoginController:doGet:Entering");
		PrintWriter out = response.getWriter();
		
		String email = request.getParameter("email").trim();		
		String password = request.getParameter("password");	
		
		boolean valid = true;
		
		if (email.equals("") || email.length() < 7){
			valid = false;		
		}
		
		if (password.equals("") || password.length() < 5){
			valid = false;		
		}
		
		if (valid == true){
			user = UserDB.selectUser(email);
		
			if (user == null || !user.getPassword().equals(password)) {
			valid = false;
			} 
		}		
	
		if (valid == false) {
			request.setAttribute("errorMessage", "Email or Password is invalid.");
			String nextJSP = "/login.jsp";
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
			dispatcher.forward(request,response);
		} else {
			// store the User object as a session attribute
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			System.out.println("LoginController:doGet:iduser=" + user.getIduser());
			
			String nextJSP = "/home.jsp";
			System.out.println("LoginController:doGet:Exiting");
			response.sendRedirect("home.jsp");  
		}
		
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
