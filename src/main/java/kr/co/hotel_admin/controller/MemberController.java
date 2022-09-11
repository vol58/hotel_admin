package kr.co.hotel_admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.hotel_admin.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	@Qualifier("ms")
	private MemberService service;

	@RequestMapping("/member/member_list")
	public String member_list(HttpServletRequest request,Model model)
	{
	  return service.member_list(request,model);
	}
	@RequestMapping("/member/dobae") //페이징확인용도 유령계정 200개생성 (나중에삭제)	
    public String dobae()
		{
		 return service.dobae();
		}
	@RequestMapping ("/member/member_content")
	public String member_content(HttpServletRequest request,Model model)
	{
		return service.member_content(request,model);
	}
	
	@RequestMapping("/member/state_change")
	public String state_change(Model model)
	{
		return service.state_change(model);
	}

}
