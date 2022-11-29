package Manager;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Serlet_login.Account;
import Serlet_login.DAO;

/**
 * Servlet implementation class Infor
 */
@WebServlet("/Watch")
public class Infor extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user = request.getParameter("User");
		DAO lg = new DAO();
		Account a = lg.watchemploy(user);
		HttpSession ss = request.getSession();
		ss.setAttribute("User", a);
		request.getServletContext().getRequestDispatcher("/Infor.jsp").forward(request, response);
		// response.sendRedirect("Infor.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
