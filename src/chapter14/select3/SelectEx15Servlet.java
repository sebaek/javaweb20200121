package chapter14.select3;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chapter14.util.DBCP;

/**
 * Servlet implementation class SelectEx15Servlet
 */
@WebServlet("/chapter14/select15")
public class SelectEx15Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectEx15Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dno = request.getParameter("dno");
		if (dno != null) {
			Map<String, Object> map = getSumSalaryByDno(dno);
			request.setAttribute("info", map);
		}
		String view = "/WEB-INF/chap14/select3/select15.jsp";
		request.getRequestDispatcher(view).forward(request, response);
		
	}

	private Map<String, Object> getSumSalaryByDno(String dno) {
		String sql = "SELECT d.dno, d.dname, sum(e.salary) "
				+ "FROM employee e, department d "
				+ "WHERE e.dno=d.dno "
				+ "AND d.dno=? "
				+ "GROUP BY d.dno, d.dname";
		Map<String, Object> map = new HashMap<>();
		
		try (
			Connection con = DBCP.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);
		) {
			stmt.setInt(1, Integer.parseInt(dno));
			ResultSet rs = stmt.executeQuery();
			
			if (rs.next()) {
				map.put("dno", rs.getInt(1));
				map.put("dname", rs.getString(2));
				map.put("sum", rs.getInt(3));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return map;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

