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
	public String check_restroom(HttpServletRequest request, Model model) {
		 String[] date=request.getParameter("daterange").split(" - ");
		 String checkin=date[0];
		 String checkout=date[1];
		 String person=request.getParameter("person");
		 ArrayList<BookVO> list=mapper.check_restroom(checkin,checkout,person);
		
		 model.addAttribute("list",list);
		 
		 return "/book/book1";
	}
}
