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
 * Servlet implementation class SelectEx11Servlet
 */
@WebServlet("/chapter14/select11")
public class SelectEx11Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectEx11Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String from = request.getParameter("from");
		String to = request.getParameter("to");
		
		if (from != null && to != null) {
			List<Employee> list = listEmployeeByHireDate(from, to);
			request.setAttribute("emps", list);
		}
		
		String view = "/WEB-INF/chap14/select/select11.jsp";
		request.getRequestDispatcher(view).forward(request, response);
	}

	private List<Employee> listEmployeeByHireDate(String from, String to) {
		List<Employee> list = new ArrayList<>();
		String sql = "SELECT * FROM employee"
				+ " WHERE hiredate BETWEEN ? AND ?";
		
		try (
			Connection con = DBCP.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);
				) {
			stmt.setDate(1, Date.valueOf(from));
			stmt.setDate(2, Date.valueOf(to));
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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
