package kr.co.hotel_admin.controller;



import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.hotel_admin.service.BookService;
import kr.co.hotel_admin.vo.BookVO;

@Controller
public class BookController {

	@Autowired
	@Qualifier("bs")
	private BookService service;
	
	@RequestMapping("/book/book")
	public String book()
	{
		return "/book/book";
	}
	
	@RequestMapping("/book/list")
	public String list(BookVO bvo, Model model)
	{
		return service.list(bvo, model);
	}
	
	@RequestMapping("/book/sales")
	public String sales()
	{
		return "/book/sales";
	}
	
	
	
}
