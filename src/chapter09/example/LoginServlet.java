package chapter09.example;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/chapter09/example/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		if (id != null && password != null) {
			if (id.equals(password)) {
				HttpSession session = request.getSession();
				session.setAttribute("user", id);
				
				response
					.sendRedirect
					(request.getContextPath() 
					+ "/chapter09/example");
				return;
			} else {
				request.setAttribute
				("error", "ID와 패스워드가 일치하지 않습니다.");
			}
		}
		
		RequestDispatcher view = request
				.getRequestDispatcher
				("/WEB-INF/chapter09/example/login.jsp");
		view.forward(request, response);
	}

}









