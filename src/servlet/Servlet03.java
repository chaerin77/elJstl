package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/03")
public class Servlet03 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* 
		 request 영역의 변수의 값 꺼내쓰는 테스트
		 localhost:8088/elJstl/03?id=you&pw=1111&name=재석&num1=100&num2=200
		 주소창에 elJstl/03 까지만 치면 당연 아무것도 안나옴
		 */
		//객체에서 계산한 값은 어트리뷰트에 넣어줘야setAttribute jsp에서 getAttribute로 여기서 넣은 값 꺼낼수있음
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/03.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
