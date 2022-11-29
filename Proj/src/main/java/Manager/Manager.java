package Manager;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Serlet_login.Account;
import Serlet_login.DAO;

/**
 * Servlet implementation class Manager
 */
@WebServlet("/Manager")
public class Manager extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String dif = request.getQueryString();
		DAO lg = new DAO();
		if(!"Update".equalsIgnoreCase(dif)) {
		List<Account> list = lg.listuser(0);
		request.setAttribute("manager", list);
		request.getRequestDispatcher("Manager.jsp").forward(request, response);
	}
			request.getRequestDispatcher("UpdateInfor.jsp").forward(request, response);
		}
			
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
