package Serlet_news;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Serlet_login.Account;
import Serlet_login.DAO;

/**
 * Servlet implementation class Infor_car
 */

@WebServlet("/Infor_car")
public class Infor_car extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		String find = request.getParameter("info");
		
		DAO lg = new DAO();
		List<Car> list = lg.searchinfo(find);
		List<Car> listall = lg.searchall();

		request.setAttribute("lists", list);

		request.getRequestDispatcher("Aboutcar.jsp").forward(request, response);
		
		
	}

}
