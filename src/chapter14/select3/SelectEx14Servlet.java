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
 * Servlet implementation class Select
 */
@WebServlet("/chapr14/select14")
public class SelectEx14Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectEx14Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] dno = request.getParameterValues("dno");
		if (dno != null) {
			List<Employee> list = listEmployeesByDno(dno);
			request.setAttribute("emps", list);
		}
		
		String view = "/WEB-INF/chap14/select3/select14.jsp";
		request.getRequestDispatcher(view).forward(request, response);
		
	}

	private List<Employee> listEmployeesByDno(String[] dno) {
		List<Employee> list = new ArrayList<>();
		String sql = "SELECT e.eno, e.ename, d.dname "
				+ "FROM employee e, department d "
				+ "WHERE e.dno = d.dno "
				+ "AND d.dno IN (?, ?, ?, ?)";
		
		try (
			Connection con = DBCP.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);
		) {
			int i = 0;
			for (i = 0; i < dno.length; i++) {
				stmt.setInt(i+1, Integer.parseInt(dno[i]));
			}
			for (; i < 4; i++) {
				stmt.setInt(i+1, 0);
			}
			
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
