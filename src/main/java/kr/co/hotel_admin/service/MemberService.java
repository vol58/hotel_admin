package kr.co.hotel_admin.service;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import kr.co.hotel_admin.vo.MemberVO;

public interface MemberService {
 
	public String member_list(HttpServletRequest request,Model model);
    public String dobae();
    public String member_content(HttpServletRequest request,Model model);
	public String state_change(Model model);
	public void check_userid(HttpServletRequest request,PrintWriter out);
    public String update_ok(MemberVO mvo);
    public String member_delete(HttpServletRequest request);


}
