package chapter07;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberListServlet
 */
@WebServlet("/list")
public class MemberListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MemberListServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String user = request.getParameter("userName");
		addMember(user);

		List<String> list = listMember();

		request.setAttribute("members", list);
		
		String viewPath = "/WEB-INF/view/chapter07/list.jsp";
		
		RequestDispatcher view = request.getRequestDispatcher(viewPath);
		view.forward(request, response);
	}

	private List<String> listMember() {
		ServletContext application = getServletContext();

		List<String> list = (List<String>) application.getAttribute("members");

		return list;
	}

	private void addMember(String user) {
		ServletContext application = getServletContext();
		Object a = application.getAttribute("members");
		
		if (a == null) {
			a = new ArrayList<String>();
			application.setAttribute("members", a);
		}
		
		List<String> list = (List<String>) a;
		list.add(user);
	}

}
