package chapter14.select3;

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
 * Servlet implementation class SelectEx13Servlet
 */
@WebServlet("/chapter14/select13")
public class SelectEx13Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectEx13Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dno = request.getParameter("dno");
		if (dno != null) {
			List<Employee> list = listEmployeesByDept(dno);
			request.setAttribute("emps", list);
		}
		
		String view = "/WEB-INF/chap14/select3/select13.jsp";
		request.getRequestDispatcher(view).forward(request, response);
		
	}

	private List<Employee> listEmployeesByDept(String dno) {
		List<Employee> list = new ArrayList<>();
		String sql = "SELET e.eno, e.name, d.dname "
				+ "FROM employee e, department d "
				+ "WHERE e.dno = d.dno "
				+ "AND d.dno=?";
		
		try (
			Connection con = DBCP.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);
		) {
			stmt.setInt(1, Integer.valueOf(dno));
			
			ResultSet rs = stmt.executeQuery();
			
			while (rs.next()) {
				Employee e = new Employee();
				e.setEno(rs.getInt(1));
				e.setEname(rs.getString(2));
				e.setDname(rs.getString(3));
				list.add(e);
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
