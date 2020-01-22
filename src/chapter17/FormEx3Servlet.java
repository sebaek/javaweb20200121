package chapter17;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FormEx3Servlet
 */
@WebServlet("/formex3")
public class FormEx3Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormEx3Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		out.println("<ul>");
		
		String[] value1 = request.getParameterValues("number");
		processLotto(value1, out);
		
		out.println("</ul>");
		
	}

	private void processLotto(String[] value1, PrintWriter out) {
		Random random = new Random();
		List<Integer> list = new ArrayList<>();
		List<Integer> com = new ArrayList<>();
		List<Integer> user = new ArrayList<>();
		
		for (int i = 1; i <= 45; i++) {
			list.add(i);
		}
		
		for (int i = 0; i < 6; i++) {
			com.add(list.remove(random.nextInt(45 - i)));
		}
		
		for (String v : value1) {
			user.add(Integer.parseInt(v));
		}
		
		out.println("<li>" + user +"</li>");
		out.println("<li>" + com +"</li>");
		
		int cnt = 0;
		
		for (Integer u : user) {
			if (com.contains(u)) {
				cnt++;
			}
		}
		
		out.println("<li>" + cnt +"개 일치</li>");
	}

}























