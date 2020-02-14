package chapter14.select3;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
 * Servlet implementation class SelectEx18Servlet
 */
@WebServlet("/chapter14/select18")
public class SelectEx18Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SelectEx18Servlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Employee> managers = listManagers();
		request.setAttribute("managers", managers);

		String managerNo = request.getParameter("managerNo");

		if (managerNo != null) {
			List<Employee> emps = listEmployeesByManager(managerNo);
			request.setAttribute("emps", emps);
		}

		String view = "/WEB-INF/chap14/select/select18.jsp";
		request.getRequestDispatcher(view).forward(request, response);

	}

	private List<Employee> listEmployeesByManager(String managerNo) {
		List<Employee> list = new ArrayList<>();

		String sql = 
				"SELECT       "
					    + "e2.ename,        "
					    + "e1.eno,  "
					    + "e1.ename,        "
					    + "e1.job,  "
					    + "d.dname  "
					+ "FROM "
					    + "employee    e1,  "
					    + "employee    e2,  "
					    + "department  d    "
					+ "WHERE        "
					        + "e1.manager = e2.eno  "
					    + "AND e1.dno = d.dno       "
					    + "AND e1.manager = ?      ";

		try (
				Connection con = DBCP.getConnection();
				PreparedStatement stmt = con.prepareStatement(sql);
		) {
			stmt.setInt(1, Integer.valueOf(managerNo));
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				Employee emp = new Employee();
				emp.setManagerName(rs.getString(1));
				emp.setEno(rs.getInt(2));
				emp.setEname(rs.getString(3));
				emp.setJob(rs.getString(4));
				emp.setDname(rs.getString(5));
				list.add(emp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	private List<Employee> listManagers() {
		List<Employee> list = new ArrayList<>();
		String sql = "SELECT distinct e2.eno, e2.ename " + "FROM employee e1, employee e2 "
				+ "WHERE e1.manager = e2.eno ";

		try (
				Connection con = DBCP.getConnection();
				Statement stmt = con.createStatement();
		) {
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				Employee manager = new Employee();
				manager.setEno(rs.getInt(1));
				manager.setEname(rs.getString(2));
				list.add(manager);
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
