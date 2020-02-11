package chapter14.select;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chapter14.bean.Employee;
import chapter14.util.DBCP;

/**
 * Servlet implementation class SelectEx5Servlet
 */
@WebServlet("/chapter14/select5")
public class SelectEx5Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectEx5Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		
		if (name != null) {
			Employee emp = getEmployeeByName(name.toUpperCase());
			request.setAttribute("employee", emp);
			if (emp == null) {
				request.setAttribute("message", "찾지 못했습니다.");	
			}
		} else {
			request.setAttribute("message", "이름을 입력하세요.");
		}
		
		String path = "/WEB-INF/chap14/select/select5.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

	private Employee getEmployeeByName(String name) {
		Employee emp = null;
		
		String sql = "SELECT * FROM employee "
				+ "WHERE ename='" + name + "'";
		
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			con = DBCP.getConnection();
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				emp = new Employee();
				emp.setEno(rs.getInt("ENO"));
				emp.setEname(rs.getString("ENAME"));
				emp.setJob(rs.getString("JOB"));
				emp.setManager(rs.getInt("MANAGER"));
				emp.setHireDate(rs.getDate("HIREDATE"));
				emp.setSalary(rs.getDouble("SALARY"));
				emp.setCommission(rs.getDouble("COMMISSION"));
				emp.setDno(rs.getInt("DNO"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
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
