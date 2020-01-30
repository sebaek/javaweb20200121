package chapter07;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ForwardEx1Servlet
 */
@WebServlet("/ForwardEx1Servlet")
public class ForwardEx1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForwardEx1Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    private List<String> getItems() {
    	List<String> list = new ArrayList<>();
    	
    	list.add("apple");
    	list.add("banana");
    	list.add("orange");
    	list.add("water");
    	
    	return list;
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<String> items = getItems();
		
		request.setAttribute("items", items);
		
		RequestDispatcher view = request.getRequestDispatcher("/chapter07/forward/forwardex3.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
