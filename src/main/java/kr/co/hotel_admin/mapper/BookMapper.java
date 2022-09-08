package kr.co.hotel_admin.mapper;

import java.util.ArrayList;

import kr.co.hotel_admin.vo.BookVO;

public interface BookMapper {
	public ArrayList<BookVO> check_restroom(String checkin, String checkout, String person);
	
}
