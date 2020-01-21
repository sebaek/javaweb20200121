package chapter17;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FormEx1Servlet
 */
@WebServlet("/formex1")
public class FormEx1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormEx1Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("formex1 get 메소드");
		response.setContentType("text/html; charset=utf-8"); 
		PrintWriter out = response.getWriter();
		out.println("<h1>GET 방식으로 요청받음</h1>");
		String value = request.getParameter("name");
		out.println("<h2>받은 name의 값은:" +value +"</h2>");
		
		out.println("<ul>");
		Enumeration<String> names = request.getParameterNames();
		while (names.hasMoreElements()) {
			String name = names.nextElement();
			out.println("<li>" + name + "</li>");
			out.println("<li>" + request.getParameter(name) + "</li>");
		}
		out.println("</ul>");
		
	}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("formex1 post 메소드");
		response.setContentType("text/html; charset=utf-8"); 
		PrintWriter out = response.getWriter();
		out.println("<h1>POST 방식으로 요청받음</h1>");
		String value = request.getParameter("name");
		out.println("<h2>받은 name의 값은:  " +value +"</h2>");
		
		out.println("<ul>");
		Enumeration<String> names = request.getParameterNames();
		while (names.hasMoreElements()) {
			String name = names.nextElement();
			out.println("<li>" + name + "</li>");
			out.println("<li>" + request.getParameter(name) + "</li>");
		}
		out.println("</ul>");
	}

}









