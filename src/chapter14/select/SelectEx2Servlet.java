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

/**
 * Servlet implementation class SelectEx2Servlet
 */
@WebServlet("/chpater14/select2")
public class SelectEx2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SelectEx2Servlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<String> names = listNames();
		request.setAttribute("names", names);

		String path = "/WEB-INF/chap14/select/select2.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	private List<String> listNames() {
		List<String> names = new ArrayList<>();

		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;

		String sql = "SELECT ename FROM employee ";

		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String id = "c##mydb";
		String pw = "admin";

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
				names.add(rs.getString("ENAME"));
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

		return names;
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
