package mypage.mymain.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import mypage.model.service.MyPageService;
import mypage.mymain.model.vo.MyPage;
import reservation.model.vo.Reservation;

/**
 * Servlet implementation class Test
 */
@WebServlet("/Test.me")
public class Test extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Test() {
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
		 String userId = request.getParameter("userId");
		    ArrayList<MyPage> mmrlist = new MyPageService().mymainreserv(userId);

		    response.setContentType("application/json; charset=UTF-8");
		    // 데이터를 JSON 형식으로 변환하여 응답
		    PrintWriter out = response.getWriter();
		    out.print(new Gson().toJson(mmrlist));
		    out.flush();
	}

}
