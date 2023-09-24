package grubexchange.controller;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import grubexchange.business.Grub;
import grubexchange.business.Offer;
import grubexchange.business.User;
import grubexchange.db.GrubDB;
import grubexchange.db.OfferDB;
import grubexchange.db.UserDB;

/**
 * Servlet implementation class SignUpController
 */
@WebServlet("/ConfirmGrubController")
public class ConfirmGrubController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfirmGrubController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("in the doGet method");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		
		
		String strOfferingIdgrub = request.getParameter("idgrub");
		int offeringIdgrub = Integer.parseInt(strOfferingIdgrub);
		
		User offeringUser = (User) session.getAttribute("user");
	    Grub offeringGrub = GrubDB.selectGrubByIdgrub(offeringIdgrub);

	    Grub receivingGrub = (Grub) session.getAttribute("grubWanted");
	    User receivingUser = UserDB.selectUserByIduser(receivingGrub.getIduser());
	    
//	    System.out.println(offeringUser);
//	    System.out.println(offeringGrub);
//	    System.out.println(receivingUser);
//	    System.out.println(receivingGrub);
	    
	    Offer offer = new Offer(-1, receivingUser.getIduser(), offeringUser.getIduser(), receivingGrub.getIdgrub(), offeringGrub.getIdgrub());
	    System.out.println("ConfirmGrubController:doGet:offer made");
	    OfferDB.insert(offer);
		
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
