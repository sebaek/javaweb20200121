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

import chapter14.bean.Employee;
import chapter14.util.DBCP;

/**
 * Servlet implementation class InsertEx2Servlet
 */
@WebServlet("/chapter14/insert2")
public class InsertEx2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertEx2Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Employee> list = listEmployees();
		request.setAttribute("employees", list);
		
		String view = "/WEB-INF/chap14/insert1/insert2.jsp";
		request.getRequestDispatcher(view).forward(request, response);
		
	}

	private List<Employee> listEmployees() {
		List<Employee> list = new ArrayList<>();
		String sql = "SELECT eno, ename, job, hiredate "
				+ "FROM emp_copy ";
		
		try (
			Connection con = DBCP.getConnection();
			Statement stmt = con.createStatement();
			) {
			ResultSet rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				Employee e = new Employee();
				e.setEno(rs.getInt(1));
				e.setEname(rs.getString(2));
				e.setJob(rs.getString(3));
				e.setHireDate(rs.getDate(4));
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
		// 파라미터에서 받은 값으로 employee 하나 만들기
		String eno = request.getParameter("eno");
		String ename = request.getParameter("ename");
		String job = request.getParameter("job");
		String hireDate = request.getParameter("hireDate");
		
		Employee e = new Employee();
		e.setEno(Integer.parseInt(eno));
		e.setEname(ename);
		e.setJob(job);
		e.setHireDate(java.sql.Date.valueOf(hireDate));
		
		// db 에 추가
		addEmployee(e);
		
		// forward or redirect
		doGet(request, response);
		
	}

	private void addEmployee(Employee e) {
		String sql = "INSERT INTO emp_copy "
				+ "(eno, ename, job, hireDate) "
				+ "VALUES "
				+ "(?, ?, ?, ?) ";
		
		try (
			Connection con = DBCP.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);
		) {
			stmt.setInt(1, e.getEno());
			stmt.setString(2, e.getEname());
			stmt.setString(3, e.getJob());
			stmt.setDate(4, (java.sql.Date) e.getHireDate());
			stmt.executeQuery();
			
		} catch (Exception e1) {
			e1.printStackTrace();
		}

		
	}

}







