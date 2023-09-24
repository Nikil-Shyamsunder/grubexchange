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

import grubexchange.business.User;
import grubexchange.db.UserDB;

/**
 * Servlet implementation class SignUpController
 */
@WebServlet("/SignUpController")
public class SignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("in the doGet method");
		PrintWriter out = response.getWriter();
		
		String firstName = request.getParameter("first_name");		
		String lastName = request.getParameter("last_name" );	
		String password = request.getParameter("password");	
		String email = request.getParameter("email");	
		String phoneNumber = request.getParameter("phone_number");	
		
		String strPeanutAllergy = request.getParameter("peanut_allergy");
		boolean peanutAllergy = false;	
		
		if (strPeanutAllergy != null && strPeanutAllergy.equals("true")){
			peanutAllergy = true;
		}
		
		
		String strEggAllergy = request.getParameter("egg_allergy");
		boolean eggAllergy = false;
		
		if (strEggAllergy != null && strEggAllergy.equals("true")){
			eggAllergy = true;
		}

		
		String strCowsMilkAllergy = request.getParameter("cows_milk_allergy");
		boolean cowsMilkAllergy = false;
		
		if (strCowsMilkAllergy != null && strCowsMilkAllergy.equals("true")){
			cowsMilkAllergy = true;
		}

				
		String strTreenutsAllergy = request.getParameter("treenuts_allergy");
		boolean treenutsAllergy = false;
		
		if (strTreenutsAllergy != null && strTreenutsAllergy.equals("true")){
			treenutsAllergy = true;
		}
		
			
		String strShellfishAllergy = request.getParameter("shellfish_allergy");
		boolean shellfishAllergy = false;
		
		if (strShellfishAllergy != null && strShellfishAllergy.equals("true")){
			shellfishAllergy = true;
		}

			
		String strWheatAllergy = request.getParameter("wheat_allergy");
		boolean wheatAllergy = false;
	
		if (strWheatAllergy != null && strWheatAllergy.equals("true")){
			wheatAllergy = true;
		}
	
		
		String strSoyAllergy = request.getParameter("soy_allergy");
		boolean soyAllergy = false;
		
		if (strSoyAllergy != null && strSoyAllergy.equals("true")){
			soyAllergy = true;
		}
		
		String strTermsAndConditions = request.getParameter("terms_and_conditions");
		boolean termsAndConditions = false;
		
		if (strTermsAndConditions != null && strTermsAndConditions.equals("true")){
			termsAndConditions = true;
		}
		
		boolean valid = true;
		
		firstName = firstName.trim();
		lastName = lastName.trim();
		email = email.trim();
		password = password.trim();
		phoneNumber = phoneNumber.trim();
		
		if (firstName.equals("") || firstName.length() < 2){
			valid = false;		
		}
		
		if (lastName.equals("") || lastName.length() < 2){
			valid = false;		
		}
		
		if (email.equals("") || email.length() < 7){
			valid = false;		
		}
		
		if (password.equals("") || password.length() < 5){
			valid = false;		
		}
		
		if (phoneNumber.equals("") || phoneNumber.length() < 9){
			valid = false;		
		}	
				
	
		if (valid == false) {
			request.setAttribute("errorMessage", "ERROR: Ensure that First Name, Last Name, Password, Email Address, and Phone Number have been filled.");
			String nextJSP = "/signup.jsp";
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
			dispatcher.forward(request,response);
		} else {			
			if (valid == true){
				User user = new User(-1, firstName, lastName, email, password, phoneNumber, peanutAllergy, eggAllergy, 
						cowsMilkAllergy, treenutsAllergy, shellfishAllergy, wheatAllergy, soyAllergy, termsAndConditions);
					
				int insertStatus = UserDB.insert(user);
				user = UserDB.selectUser(email);
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
						
						
				String nextJSP = "/home.jsp";
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
