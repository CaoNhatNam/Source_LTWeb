package Serlet_login;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Checklogin
 */
@WebServlet("/Checklogin")
public class Checklogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		response.setContentType("text/html;charset=UTF-8");
		String out = request.getQueryString();
		HttpSession ss = request.getSession();
		if (!"logout".equalsIgnoreCase(out)) {
			try {
				String username =  request.getParameter("User");
				String password = request.getParameter("pass");
				
				String Getuser = ";jsessionid="+ss.getId();
				String sesion = null;
				DAO lg = new DAO();
				Account a = lg.checklogin(username, password);		
				
				if(a == null) {
					sesion = getServletContext().getContextPath() + "/Fail.jsp";
				}
				else   {
					System.out.println(a.getAdmin());
					ss.setAttribute("Admin", a);		
					sesion = getServletContext().getContextPath() + "/Afterlogin.jsp" + Getuser;
					
				}
			
				response.sendRedirect(sesion);
			}
			catch (Exception e) {
				// TODO: handle exception
			}
			
			
		}else {
			ss.invalidate();
			request.getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
		}
		
	}

}
