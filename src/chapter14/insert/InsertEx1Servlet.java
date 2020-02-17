package chapter14.insert;

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

import chapter14.bean.Department;
import chapter14.util.DBCP;

/**
 * Servlet implementation class InsertEx1Servlet
 */
@WebServlet("/chapter14/insert1")
public class InsertEx1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertEx1Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Department> deps = listDepartments();
		request.setAttribute("departments", deps);
		
		String view = "/WEB-INF/chap14/insert1/insert1.jsp";
		request.getRequestDispatcher(view).forward(request, response);
	}

	private List<Department> listDepartments() {
		List<Department> list = new ArrayList<>();
		String sql = "SELECT dno, dname, loc "
				+ "FROM dept_copy ";
		
		try (
			Connection con = DBCP.getConnection();
			Statement stmt = con.createStatement();
		) {
			ResultSet rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				Department dept = new Department();
				dept.setDno(rs.getInt(1));
				dept.setDname(rs.getString(2));
				dept.setLoc(rs.getString(3));
				list.add(dept);
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
		// 데이터를 파라미터에서 받아서
		String dno = request.getParameter("dno");
		String dname = request.getParameter("dname");
		String loc = request.getParameter("loc");
		
		Department d = new Department();
		d.setDno(Integer.parseInt(dno));
		d.setDname(dname);
		d.setLoc(loc);
		
		// db에 insert
		addDepartment(d);
		
		// view로 forward
		doGet(request, response);
		
	}

	private void addDepartment(Department d) {
		String sql = "INSERT INTO dept_copy "
				+ "(dno, dname, loc) "
				+ "VALUES "
				+ "(?, ?, ?) ";
		
		try (
			Connection con = DBCP.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);
		) {
			stmt.setInt(1, d.getDno());
			stmt.setString(2, d.getDname());
			stmt.setString(3, d.getLoc());
			
			int cnt = stmt.executeUpdate();
			
			if (cnt != 1) {
				System.out.println("부서 입력중 문제 발생.");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}







