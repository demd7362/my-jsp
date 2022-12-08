package example;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SimpleController extends HttpServlet{
	// 1단계, HTTP 요청 받음
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		processRequest(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		processRequest(req, resp);
	}
	private void processRequest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 2단계, 요청 파악
		// request 객체로부터 사용자의 요청을 파악하는 코드
		String type = req.getParameter("type");
		
		// 3단계, 요청한 기능을 수행한다
		// 사용자의 요청에 따라 알맞은 코드
		Object resultObject = null;
		if(type == null || type.equals("greeting")){
			resultObject = "안녕하세요";
			
		} else if(type.equals("date")) {
			resultObject = new java.util.Date();
		} else {
			resultObject = "Invalid Type";
		}
		// 4단계, request나 session에 처리 결과를 저장
		req.setAttribute("result", resultObject);
		// 5단계, RequestDispatcher를 사용하여 알맞은 뷰로 포워딩
		RequestDispatcher dispatcher = req.getRequestDispatcher("/simpleView.jsp");
		dispatcher.forward(req, resp);
	}
	
}
