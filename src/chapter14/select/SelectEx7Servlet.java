package chapter14.select;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chapter14.bean.Employee;
import chapter14.util.DBCP;

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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String[] jobs = request.getParameterValues("job");

		if (jobs != null) {
			List<Employee> list = listEmployeeByJob(jobs);
			request.setAttribute("emps", list);
		}
		
		String path = "/WEB-INF/chap14/select/select7.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	private List<Employee> listEmployeeByJob(String[] jobs) {
		List<Employee> list = new ArrayList<>();
		
		String inJobs = "";
		
		for (int i = 0; i < jobs.length; i++) {
			inJobs += "'" + jobs[i] + "'";
			
			if (i < jobs.length - 1) {
				inJobs += ", ";
			}
		}
		
		String sql = "SELECT * FROM employee " 
		+ "WHERE job IN (" + inJobs + ")";

		try (Connection con = DBCP.getConnection();
			 Statement stmt = con.createStatement();) {
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				Employee emp = new Employee();
				emp.setEno(rs.getInt("ENO"));
				emp.setEname(rs.getString("ENAME"));
				emp.setJob(rs.getString("JOB"));
				emp.setManager(rs.getInt("MANAGER"));
				emp.setHireDate(rs.getDate("HIREDATE"));
				emp.setSalary(rs.getDouble("SALARY"));
				emp.setCommission(rs.getDouble("COMMISSION"));
				emp.setDno(rs.getInt("DNO"));

				list.add(emp);
			} 
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
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
