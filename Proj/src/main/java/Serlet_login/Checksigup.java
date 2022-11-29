package Serlet_login;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Checksigup
 */
@WebServlet("/Checksigup")
public class Checksigup extends HttpServlet {
	private static final long serialVersionUID = 1L;


  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String Email = request.getParameter("email");
		String User = request.getParameter("User");
		String Pass = request.getParameter("pass");
		String CheckPass = request.getParameter("check");
		DAO lg = new DAO();
		Account acc = lg.checkaccount(User);
		Account email = lg.checkaemail(Email);
		if((acc == null && Pass.equals(CheckPass)) && email==null ) {
			lg.sigup(User, Pass,Email,fname,lname,CheckPass);
			
			response.sendRedirect("Sigupsuccess.jsp");
		}
		else
			response.sendRedirect("Signup.jsp");
		
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	
	}
		
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
