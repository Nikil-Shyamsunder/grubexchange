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
@WebServlet("/AcceptOfferController")
public class AcceptOfferController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AcceptOfferController() {
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
		
		
		String strReceivingIdgrub = request.getParameter("idgrub");
		int receivingIdgrub = Integer.parseInt(strReceivingIdgrub);
		System.out.println(receivingIdgrub);
		
		Offer offer =  OfferDB.selectOfferByIdgrub(receivingIdgrub);
		System.out.println(offer);
		GrubDB.confirmOffer(offer.getReceivingIdgrub());
		GrubDB.confirmOffer(offer.getOfferingIdgrub());

		
		

		
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
