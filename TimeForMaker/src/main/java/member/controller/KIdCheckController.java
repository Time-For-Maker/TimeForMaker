package mypage.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import mypage.member.model.service.MemberService;

/**
 * Servlet implementation class KIdCheckController
 */
@WebServlet("/KIdCheck.me")
public class KIdCheckController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public KIdCheckController() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userId = request.getParameter("userId");
		System.out.println("Kidcheck userid : "+userId);
		int result = new MemberService().kIdCheck(userId);
		response.setContentType("application/json; charset=UTF-8");
		System.out.println("Kidcheck : "+result);
		if (result > 0) {
			// 중복된 아이디가 존재함
			response.getWriter().print("0");
		} else { // 중복된 아이디가 존재하지 않음
			response.getWriter().print("1");
		}
	}
}
