package mypage.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import mypage.member.model.service.MemberService;
import mypage.member.model.vo.Member;

/**
 * Servlet implementation class KakaologinController
 */
@WebServlet("/Klogin.me")
public class KakaologinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public KakaologinController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		System.out.println("controller userId : " + userId);
		System.out.println("controller userPwd : " + userPwd);

		Member loginUser = new MemberService().loginMember(userId, userPwd);
		System.out.println("controller Member loginuser : " + loginUser);

		response.setContentType("application/json; charset=UTF-8");
		if (loginUser != null) {
			// 로그인 성공 시 세션에 정보 저장
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", loginUser);

			// JSON으로 로그인 사용자 정보 응답
			Gson gson = new Gson();
			String json = gson.toJson(loginUser);
			response.getWriter().print(json);
		} else {
			// 로그인 실패 응답
			response.getWriter().print("failure");
		}

	}

}
