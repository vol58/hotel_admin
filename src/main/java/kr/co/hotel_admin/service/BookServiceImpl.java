package kr.co.hotel_admin.service;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.hotel_admin.mapper.BookMapper;
import kr.co.hotel_admin.vo.BookVO;

@Service
@Qualifier("bs")
public class BookServiceImpl implements BookService {

	@Autowired
	public BookMapper mapper;

	@Override
	public String list(BookVO bvo, Model model) {
		 ArrayList<BookVO> blist=mapper.list();		
		 model.addAttribute("blist",blist);
		 
		 return "/book/list";
	}
}
