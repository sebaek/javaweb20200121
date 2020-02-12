package chapter14.select2;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
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
 * Servlet implementation class SelectEx12Servlet
 */
@WebServlet("/chapter14/select12")
public class SelectEx12Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SelectEx12Servlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String month = request.getParameter("month");

		if (month != null) {
			List<Employee> list = listEmployeeByHireDate(month);
			request.setAttribute("emps", list);
		}

		String view = "/WEB-INF/chap14/select/select12.jsp";
		request.getRequestDispatcher(view).forward(request, response);
	}

	private List<Employee> listEmployeeByHireDate(String month) {
		List<Employee> list = new ArrayList<>();
		String sql = "SELECT * FROM employee" + " WHERE to_char(hiredate, 'YYYY-MM')=?";

		try (
				Connection con = DBCP.getConnection();
				PreparedStatement stmt = con.prepareStatement(sql);
		) {

			stmt.setString(1, month);

			ResultSet rs = stmt.executeQuery();

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
