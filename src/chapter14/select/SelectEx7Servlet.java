package chapter14.select;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chapter14.bean.Employee;

/**
 * Servlet implementation class SelectEx7Servlet
 */
@WebServlet("/chapter14/select7")
public class SelectEx7Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectEx7Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] jobs = request.getParameterValues("job");
		
		List<Employee> list = listEmployeeByJob(jobs);
		
		request.setAttribute("emps", list);
		String path = "/WEB-INF/chap14/select/select7.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	private List<Employee> listEmployeeByJob(String[] jobs) {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
