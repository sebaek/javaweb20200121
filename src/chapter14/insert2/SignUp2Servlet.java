package chapter14.insert2;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import chapter14.bean.Member;
import chapter14.util.DBCP;

/**
 * Servlet implementation class SignUp2Servlet
 */
@WebServlet("/chapter14/signup")
public class SignUp2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUp2Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String view = "/WEB-INF/chap14/insert2/signup.jsp";
		request.getRequestDispatcher(view).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request 파라미터로 Member 빈 만들기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		Member m = new Member();
		m.setId(id);
		m.setPassword(pw);
		
		// Member빈으로 데이터 입력하기
		boolean success = addMember(m);
		
		if (success) {
			// - 입력성공하면 메인으로 redirection
			HttpSession s = request.getSession();
			s.setAttribute("user", m);
			response.sendRedirect(request.getContextPath() 
					+ "/chapter14/main");
		} else {
			// - 입력실패하면 signup.jsp로 forward
			request.setAttribute("message", "가입실패");
			doGet(request, response);
		}
		
	}

	private boolean addMember(Member m) {
		String sql = "INSERT INTO member "
				+ "VALUES (? , ? ) ";
		
		try (
			Connection con = DBCP.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);
		) {
			stmt.setString(1, m.getId());
			stmt.setString(2, m.getPassword());
			int cnt = stmt.executeUpdate();
			if (cnt < 1) {
				return false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
		return true;
	}

}












