package chapter14.select2;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
 * Servlet implementation class SelectEx9Servlet
 */
@WebServlet("/chapter14/select9")
public class SelectEx9Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SelectEx9Servlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String minSalary = request.getParameter("minSalary");
		String maxSalary = request.getParameter("maxSalary");

		if (minSalary == null || maxSalary == null) {
			request.setAttribute("message", "값을 입력하세요.");
		} else {
			List<Employee> list = listEmployeeBySalary(minSalary, maxSalary);
			request.setAttribute("emps", list);
		}

		String path = "/WEB-INF/chap14/select/select6.jsp";
		request.getRequestDispatcher(path).forward(request, response);

	}

	private List<Employee> listEmployeeBySalary(String minSalary, String maxSalary) {
		List<Employee> list = new ArrayList<>();

		ResultSet rs = null;

		String query = "SELECT * FROM employee "
				+ "WHERE salary BETWEEN ? AND ?";

		try (Connection con = DBCP.getConnection();
			 PreparedStatement stmt = con.prepareStatement(query);) {
			
			stmt.setDouble(1, Double.valueOf(minSalary));
			stmt.setDouble(2, Double.valueOf(maxSalary));
			
			rs = stmt.executeQuery();

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
