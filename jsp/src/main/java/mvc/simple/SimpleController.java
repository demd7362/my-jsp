package mvc.simple;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ControllerServlet
 */
@WebServlet("/SimpleController") // urlpattern
public class SimpleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public void processRequest(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		// 2단계 요청 파악
		String type = request.getParameter("type");
		
		// 3단계 요청한 기능을 수행한다 (모델의 역할)
		Object resultObject = null;
		if(type == null || type.equals("greeting")) {
			resultObject = "안녕하세요";
		} else if(type.equals("date")) {
			resultObject = new java.util.Date();
		} else {
			resultObject = "Invalid Type";
		}
		
		// 4단계 request나 session에 처리 결과를 저장
		request.setAttribute("result", resultObject);
		
		// 5단계 RequestDispatcher를 사용하여 알맞은 뷰로 포워딩
		RequestDispatcher rd = request.getRequestDispatcher("/simpleView.jsp");
		rd.forward(request, response);
	}

	// 1단계 요청을 받는다
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request,response);
	}

	// 1단계 요청을 받는다
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 processRequest(request,response);
	}

}
