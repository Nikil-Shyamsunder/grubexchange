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
@WebServlet("/AddGrubController")
public class AddGrubController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddGrubController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("AddGrubController:doGet:Entering");
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");		
		String description = request.getParameter("description");	
		
		String strContainsPeanuts = request.getParameter("contains_peanuts");
		boolean containsPeanuts = false;	
		
		if (strContainsPeanuts != null && strContainsPeanuts.equals("true")){
			containsPeanuts = true;
		}
		
		
		String strContainsEggs = request.getParameter("contains_eggs");
		boolean containsEggs = false;
		
		if (strContainsEggs != null && strContainsEggs.equals("true")){
			containsEggs = true;
		}

		
		String strContainsCowsMilk = request.getParameter("contains_cowsmilk");
		boolean containsCowsMilk = false;
		
		if (strContainsCowsMilk != null && strContainsCowsMilk.equals("true")){
			containsCowsMilk = true;
		}

				
		String strContainsTreenuts = request.getParameter("contains_treenuts");
		boolean containsTreenuts = false;
		
		if (strContainsTreenuts != null && strContainsTreenuts.equals("true")){
			containsTreenuts = true;
		}
		
			
		String strContainsShellfish = request.getParameter("contains_shellfish");
		boolean containsShellfish = false;
		
		if (strContainsShellfish != null && strContainsShellfish.equals("true")){
			containsShellfish = true;
		}

			
		String strContainsWheat = request.getParameter("contains_wheat");
		boolean containsWheat = false;
	
		if (strContainsWheat != null && strContainsWheat.equals("true")){
			containsWheat = true;
		}
	
		
		String strContainsSoy = request.getParameter("contains_soy");
		boolean containsSoy = false;
		
		if (strContainsSoy != null && strContainsSoy.equals("true")){
			containsSoy = true;
		}

		
		boolean valid = true;
		
		name = name.trim();
		description = description.trim();
		
		if (name.equals("") || name.length() < 2){
			valid = false;		
		}
		
		if (description.equals("") || description.length() < 2){
			valid = false;		
		}
		
		
				
	
		if (valid == false) {
			request.setAttribute("errorMessage", "Ensure that Grub Name, and Grub Description are filled.");
			String nextJSP = "/add_grub.jsp";
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
			dispatcher.forward(request,response);
		} else {			
			if (valid == true){
				HttpSession session = request.getSession();
				User user = (User) session.getAttribute("user");
				Grub grub = new Grub(-1, user.getIduser(), name, description, containsPeanuts, containsEggs, containsCowsMilk, containsTreenuts, containsShellfish, containsWheat, containsSoy);
					
				int insertStatus = GrubDB.insert(grub);
				System.out.println("LoginController:doGet:iduser=" + user.getIduser());
						
						
				String nextJSP = "/home.jsp";
				System.out.println("AddGrubController:doGet:Exiting");
				response.sendRedirect("home.jsp"); 
			}
			
				
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
