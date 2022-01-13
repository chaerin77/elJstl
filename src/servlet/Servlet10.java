package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/10")
public class Servlet10 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//url 파라미터에 따라서 변경되는거 확인
	/*
	 localhost:8088/eljstl/10?color=1 
	 */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/10_color_jstl.jsp");
		rd.forward(request, response); //주소창에 칠때 elJstl/10 이렇게 쳐야함 ("web-inf~") 이거아님 까먹지말기 주소는 항상 @webServlet("/10")여기를 봐야

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
