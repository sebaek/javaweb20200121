package chapter11;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chapter08.MemberInfo;

/**
 * Servlet implementation class ListMemberServlet
 */
@WebServlet("/ListMemberServlet")
public class ListMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListMemberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<MemberInfo> list = listMember();
		request.setAttribute("members", list);
		
		RequestDispatcher v =
				request
				.getRequestDispatcher
				("/chapter11/example/listMember.jsp");
		v.forward(request, response);
	}

	private List<MemberInfo> listMember() {
		MemberInfo mem1 = new MemberInfo();
		MemberInfo mem2 = new MemberInfo();
		MemberInfo mem3 = new MemberInfo();
		
		mem1.setName("seoul");
		mem1.setEmail("seoul@seoul.com");
		
		mem2.setName("jeju");
		mem2.setEmail("jeju@jeju.com");
		
		mem3.setName("busan");
		mem3.setEmail("busan@busan.com");
		
		List<MemberInfo> list = new ArrayList<>();
		list.add(mem1);
		list.add(mem2);
		list.add(mem3);
		
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
