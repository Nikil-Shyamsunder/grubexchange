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
@WebServlet("/MakeOfferController")
public class MakeOfferController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MakeOfferController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idgrub = request.getParameter("idgrub");
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
	
		
		boolean valid = true; 
		
		Grub grub = user.getGrubByID(idgrub);
		
		User userReceivingOffer = user.getUserByID(grub.getIduser());
		
		if (grub.getIduser() == user.getIduser()){
			valid = false;
		}
		
		if (valid){
			session.setAttribute("userReceivingOffer", userReceivingOffer);
			session.setAttribute("grubWanted", grub);
			String nextJSP = "/make_offer.jsp";
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
			dispatcher.forward(request,response);
			
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
