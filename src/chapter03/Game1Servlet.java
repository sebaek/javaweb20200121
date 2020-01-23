package chapter03;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Game1Servlet
 */
@WebServlet("/game1")
public class Game1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Set<Integer> ran;
	private Set<Integer> client;
       
	@Override
	public void init() throws ServletException {
		super.init();
		Random random = new Random();
		ran = new HashSet<Integer>();
		while (ran.size() < 3) {
			ran.add(random.nextInt(30));
		}
		client = new HashSet<Integer>();
		client = Collections.synchronizedSet(client);
	}
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Game1Servlet() {
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
		
		String number = request.getParameter("number");
		Integer num = Integer.parseInt(number);
		
		if (client.size() >= 3) {
			out.println("<h1>종료되었습니다</h1>");
		} else {
			if (ran.remove(num)) {
				client.add(num);
				out.println("<h1>당첨 되었습니다!!</h1>");
			} else {
				out.println("<h1>당첨 되지않았습니다!!</h1>");
			}
		}
		
		
	}

}
