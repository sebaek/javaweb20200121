package chapter14.insert2;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chapter14.util.DBCP;

/**
 * Servlet implementation class BoardInsertServlet
 */
@WebServlet("/chapter14/board/post")
public class BoardInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String view = "/WEB-INF/chap14/insert2/post.jsp";
		request.getRequestDispatcher(view).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request 파라미터 값 받고
		String title = request.getParameter("title");
		String body = request.getParameter("body");
		
		// db에 insert
		addPost(title, body);
		
		// forward or redirect
		doGet(request, response);
	}

	private void addPost(String title, String body) {
		String sql = "INSERT INTO board "
				+ "(title, body) "
				+ "VALUES (?, ?) ";
		
		try (
			Connection con = DBCP.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);
		) {
			stmt.setString(1, title);
			stmt.setString(2, body);
			stmt.executeQuery();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	

}








