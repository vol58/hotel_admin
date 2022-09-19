package kr.co.hotel_admin.service;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;


import kr.co.hotel_admin.mapper.BookMapper;
import kr.co.hotel_admin.vo.BookVO;
import kr.co.hotel_admin.vo.RoomVO;

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

	@Override
	public String sales(BookVO bvo, Model model) {
		 Calendar cal=Calendar.getInstance();
		 String month=Integer.toString(cal.get(Calendar.MONTH)+1);
		 String lastday=Integer.toString(cal.getActualMaximum(Calendar.DAY_OF_MONTH));
		 model.addAttribute("month",month);
		 model.addAttribute("lastday",lastday);
		 		 
		 ArrayList<BookVO> blist=mapper.list();	 
		
		 model.addAttribute("blist",blist);		

		 return "/book/sales";
	}
	
	@Override
	public String book1(HttpServletRequest request, Model model, HttpSession session) {
		
		
			String[] date=request.getParameter("date").split("-");
			 String checkin=date[0];
			 String checkout=date[1];
			 String person=request.getParameter("person");
			
			 ArrayList<RoomVO> blist=mapper.exceptroom(checkin,checkout,person);
			 model.addAttribute("blist",blist);	
		
			 model.addAttribute("checkin",checkin);
			 model.addAttribute("checkout",checkout);
			 model.addAttribute("person",person);
			 return "/book/book1";
	
	}

	@Override
	public String book2(BookVO bvo, Model model) {
		
		RoomVO rvo=mapper.book2(bvo);
		model.addAttribute("rvo",rvo);
		model.addAttribute("bvo",bvo);
		
		return "/book/book2";
	}

	@Override
	public String book3(BookVO bvo, Model model, HttpSession session) {
		String userid=session.getAttribute("userid").toString();
		bvo.setUserid(userid);
		//salescode
		String sales=bvo.getCheckin();
		Integer code=mapper.getCode(sales);
		code=code+1;
		
		String code1="";
		if((int)(Math.log10(code)+1)==1) {
			code1="0"+code;
		} else {
			code1=code.toString();
		}
		String salsecode=sales+code1;
		bvo.setSalescode(Integer.parseInt(salsecode));
		mapper.makebook(bvo);
		bvo=mapper.book3(salsecode);
	
		model.addAttribute("bvo",bvo);
		
		return "/book/book3";
	}
	
	@Override
	public String book_view(HttpServletRequest request, Model model) {
		String salescode=request.getParameter("salescode");
		BookVO bvo=mapper.book3(salescode);
		
		model.addAttribute("bvo",bvo);
		
		return "/book/book_view";
	}

	@Override
	public String book_cancel(HttpServletRequest request) {
		String salescode=request.getParameter("salescode");
		mapper.book_cancel(salescode);
		
		return "/book/list";
	}

}
