package com.jsp.board.service;

import java.time.LocalDateTime;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.board.model.BoardRepository;
import com.jsp.board.model.BoardVO;

public class UpdateService implements IBoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		//int bId = Integer.parseInt(request.getParameter("boardNo")); 밑으로 넣어서 다시 꾸며줌
//		String writer = request.getParameter("writer");
//		String title = request.getParameter("title");
//		String content = request.getParameter("content");
//		LocalDateTime updateTime = LocalDateTime.now();
//		
//		BoardVO vo = new BoardVO(writer, title, content, updateTime);
		
		BoardVO vo = new BoardVO(
					request.getParameter("writer"),
					request.getParameter("title"),
					request.getParameter("content"),
					LocalDateTime.now()
				);
		
		BoardRepository
			.getInstance()
			.update(vo, Integer.parseInt(request.getParameter("boardNo")));
		
		
	}

}