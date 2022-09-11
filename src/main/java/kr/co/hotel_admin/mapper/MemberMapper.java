package kr.co.hotel_admin.mapper;

import java.util.ArrayList;

import kr.co.hotel_admin.vo.MemberVO;

public interface MemberMapper {
  
	public ArrayList<MemberVO> member_list(String sel,String keyword,String state,int start);
	public int getchong(String sel,String keyword);

	public void dobae(String userid);
	public MemberVO member_content(String id);
	public ArrayList<MemberVO> state1_list();
	public int check_userid(String userid);
	public void update_ok(MemberVO mvo);
	public void member_delete(String id);
	
}
