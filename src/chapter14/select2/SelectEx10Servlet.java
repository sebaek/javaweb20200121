package chapter14.select2;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chapter14.bean.Employee;
import chapter14.util.DBCP;

/**
 * Servlet implementation class SelectEx10Servlet
 */
@WebServlet("/chapter14/select10")
public class SelectEx10Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectEx10Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String hireDate = request.getParameter("hireDate");
		if (hireDate != null) {
			Employee emp = getEmployeeByHireDate(hireDate);
			request.setAttribute("emp", emp);
		}
		
		String path = "/WEB-INF/chap14/select/select10.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	private Employee getEmployeeByHireDate(String hireDate) {
		Employee emp = null;
		String sql = "SELECT eno, ename, hiredate "
				+ "FROM employee "
				+ "WHERE hiredate=?";
		try (
			Connection con = DBCP.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);
				) {
			stmt.setDate(1, Date.valueOf(hireDate));
			
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				emp = new Employee();
				emp.setEno(rs.getInt(1));
				emp.setEname(rs.getString(2));
				emp.setHireDate(rs.getDate(3));
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return emp;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
