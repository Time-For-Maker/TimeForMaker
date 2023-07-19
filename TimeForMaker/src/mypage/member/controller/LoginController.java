package mypage.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mypage.member.model.service.MemberService;
import mypage.member.model.vo.Member;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login.me")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		System.out.println("controller userId : "+userId);
		System.out.println("controller userPwd : "+userPwd);
		
		Member loginUser = new MemberService().loginMember(userId, userPwd);
		System.out.println("controller Member loginuser : "+loginUser);
		if(loginUser == null) {
			request.setAttribute("errorMsg","로그인에 실패했습니다");
			RequestDispatcher view = request.getRequestDispatcher("views/common/errorPage.jsp");
			view.forward(request, response);

		}else {
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", loginUser);
			//session.setAttribute("alertMsg", "성공적으로 로그인이 되었습니다."); // 확인용 나중에 지워도 됨.
			response.sendRedirect(request.getContextPath());
		}
	
	
	
	
	}

}
