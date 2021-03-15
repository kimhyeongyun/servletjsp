package com.mycompany.webapp.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mycompany.webapp.dto.Board;

public class Controller05 {
	public void getBoardList(HttpServletRequest request, HttpServletResponse response) {
		//요청 내용을 확인
				System.out.println("클라이언트 IP" + request.getRemoteHost());
				//요청 처리를 확인
				
				//데이터 생성 및 JSP 전달
				List<Board> list = new ArrayList<>();
				for(int i=1; i<=10; i++) {
					Board board = new Board();
					board.setBno(i);
					board.setBtitle("제목" + i);
					board.setBcontent("내용" + i);
					board.setBwriter("spring");
					list.add(board);
				}
				request.setAttribute("list", list);
	}
}
