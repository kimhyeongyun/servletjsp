package com.mycompany.webapp.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mycompany.webapp.controller.Controller05;
import com.mycompany.webapp.dto.Board;



public class Servlet05 extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Servlet05 - service() 실행");
		
		//컨트롤러 생성 및 요청 처리 메소드 호출
		Controller05 ctrl = new Controller05();
		ctrl.getBoardList(request, response);
		
		//응답 내용을 생성
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/view05.jsp");
		rd.forward(request, response);
		
	}
}
