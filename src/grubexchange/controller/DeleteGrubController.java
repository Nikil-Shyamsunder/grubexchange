package grubexchange.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import grubexchange.business.User;

/**
 * Servlet implementation class DeleteGrubController
 */
@WebServlet("/DeleteGrubController")
public class DeleteGrubController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteGrubController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idgrubString  = request.getParameter("idgrub");
		int idgrub = Integer.parseInt(idgrubString);
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		
		user.deleteGrub(idgrub);
		
		String nextJSP = "/home.jsp";
		response.sendRedirect("home.jsp"); 
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
