package chapter16;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/chapter16/update")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Post> board =
			(List<Post>) getServletContext().getAttribute("board");
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		request.setAttribute("post", board.get(id - 1));
		
		String path = "/WEB-INF/chapter16/update.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Post> board = 
			(List<Post>) getServletContext().getAttribute("board");
		
		int id = Integer.parseInt(request.getParameter("id"));
		String title = request.getParameter("title");
		String body = request.getParameter("body");
		
		Post post = board.get(id - 1);
		post.setTitle(title);
		post.setBody(body);
		
		String path = request.getContextPath() 
				+ "/chapter16/view?id=" + id;
		response.sendRedirect(path);
	}

}














