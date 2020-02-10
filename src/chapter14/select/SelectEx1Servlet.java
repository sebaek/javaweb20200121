package chapter14.select;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SelectEx1Servlet
 */
@WebServlet("/chapter14/select1")
public class SelectEx1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectEx1Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; utf-8"); 
		
		String name = getName();
		
		PrintWriter out = response.getWriter();
		out.print("<h1>");
		out.print(name);
		out.print("</h1>");
	}
	
	private String getName() {
		// 379 page
		// 필요한 변수 선언
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		// 데이터베이스 접속에 필요한 정보
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String id = "c##mydb";
		String pw = "admin";
		
		// 쿼리
		String sql = "SELECT ename FROM employee";
		String name = "";
		
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
			if (rs.next()) {
				name = rs.getString("ENAME");
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
		
		return name;
	}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
