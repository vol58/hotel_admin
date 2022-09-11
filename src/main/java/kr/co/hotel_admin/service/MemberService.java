package kr.co.hotel_admin.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface MemberService {
 
	public String member_list(HttpServletRequest request,Model model);
    public String dobae();
    public String member_content(HttpServletRequest request,Model model);
	public String state_change(Model model);

}
