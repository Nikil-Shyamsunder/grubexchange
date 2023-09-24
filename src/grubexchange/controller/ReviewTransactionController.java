package grubexchange.controller;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.ArrayList;
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
import grubexchange.business.Offer;
import grubexchange.business.User;
import grubexchange.db.GrubDB;
import grubexchange.db.OfferDB;
import grubexchange.db.UserDB;

/**
 * Servlet implementation class SignUpController
 */
@WebServlet("/ReviewTransactionController")
public class ReviewTransactionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewTransactionController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ReviewTransaction");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		
		
		String strOfferingIdgrub = request.getParameter("idgrub");
		int offeringIdgrub = Integer.parseInt(strOfferingIdgrub);
		System.out.println(offeringIdgrub);
		session.setAttribute("offeringGrub", GrubDB.selectGrubByIdgrub(offeringIdgrub));
		
		Offer offer =  OfferDB.selectOfferByIdgrub(offeringIdgrub);
		int receivingIdgrub = offer.getOfferingIdgrub();
		session.setAttribute("receivingGrub", GrubDB.selectGrubByIdgrub(receivingIdgrub));



		String nextJSP = "/review_transaction.jsp";
		response.sendRedirect("review_transaction.jsp");  
		
			}

	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
