package kr.co.hotel_admin.service;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import kr.co.hotel_admin.vo.BookVO;

public interface BookService {

	public String list(BookVO bvo, Model model);
	
}
