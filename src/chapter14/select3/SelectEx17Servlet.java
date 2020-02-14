package chapter14.select3;

import java.io.IOException;
import java.sql.Connection;
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
 * Servlet implementation class SelectEx17
 */
@WebServlet("/chapter14/select17")
public class SelectEx17Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectEx17Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		if (name != null) {
			Employee e = getEmployeeByName(name);
			request.setAttribute("employee", e);
		}
		
		String view = "/WEB-INF/chap14/select/select5.jsp";
		request.getRequestDispatcher(view).forward(request, response);

	}
	
	private Employee getEmployeeByName(String name) {
		Employee e = null;
		String sql = "SELECT e1.eno, e1.ename, e1.job, "
				+ " e1.manager, e1.hiredate, e1.salary, "
				+ " e1.commission, e1.dno, e2.ename, d.dname "
				+ "FROM employee e1, employee e2, department d "
				+ "WHERE e1.manager=e2.eno "
				+ "AND e1.dno=d.dno "
				+ "AND e1.ename=?";
		
		try (
			Connection con = DBCP.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);
		) {
			stmt.setString(1, name.toUpperCase());
			ResultSet rs = stmt.executeQuery();
			
			if (rs.next()) {
				e = new Employee();
				e.setEno(rs.getInt(1));
				e.setEname(rs.getString(2));
				e.setJob(rs.getString(3));
				e.setManager(rs.getInt(4));
				e.setHireDate(rs.getDate(5));
				e.setSalary(rs.getDouble(6));
				e.setCommission(rs.getDouble(7));
				e.setDno(rs.getInt(8));
				e.setManagerName(rs.getString(9));
				e.setDname(rs.getString(10));
			}
			
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		
		
		
		
		return e;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
