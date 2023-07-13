package reception.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reception.model.vo.Reception;
import reception.service.ReceptionService;

/**
 * Servlet implementation class CheckReception
 * 
 * 사용자 및 관리자가 문의 목록에서 특정 공지글 확인하고자 요청할 시 처리
 */
@WebServlet("/reception")
public class ReceptionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReceptionController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int no = Integer.parseInt(request.getParameter("no"));
		String category = request.getParameter("category");
		
		Reception r = new Reception((String)request.getSession().getAttribute("userId"), no); // id, 조회된 결과의 번호
		Reception result = null;
		
		switch(category) {
		case "선택" : case "전체" : result = new ReceptionService().selectAllReception(r); break;
		case "계정" : case "예약" : case "기타" : result = new ReceptionService().selectReception(r, category); break;
		}
		
		request.setAttribute("r", result);
		request.getRequestDispatcher("views/user/userReception.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
