package chapter14.select;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chapter14.bean.Employee;

/**
 * Servlet implementation class SelectEx4Servlet
 */
@WebServlet("/chapter14/select4")
public class SelectEx4Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SelectEx4Servlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Employee> emps = null;
		emps = listEmployees();

		request.setAttribute("emps", emps);

		String path = "/WEB-INF/chap14/select/select4.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	private List<Employee> listEmployees() {
		// 필요한 변수 선언
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;

		// 데이터베이스 접속에 필요한 정보
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String id = "c##mydb";
		String pw = "admin";

		// 쿼리
		String sql = "SELECT * FROM employee ";
		List<Employee> emps = new ArrayList<>();;

		try {
			// 1.JDBC 드라이버 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 2.데이터베이스 커넥션 구함
			con = DriverManager.getConnection(url, id, pw);

			// 3.쿼리 실행을 위한 Statement 객체 생성
			stmt = con.createStatement();

			// 4.쿼리 실행
			rs = stmt.executeQuery(sql);
			// 5. 쿼리 실행 결과 사용
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
				
				emps.add(emp);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 6. Statement 종료
			try {
				stmt.close();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			// 7. 데이터베이스 커넥션 종료
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return emps;
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
