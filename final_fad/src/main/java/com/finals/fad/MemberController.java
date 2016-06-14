package com.finals.fad;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.finals.member.MemberDTO;
import com.finals.member.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/me_login")
	public String memberlogin(MemberDTO memberDTO, HttpSession session, RedirectAttributes redirectAttributes){
		memberService.login(memberDTO, session, redirectAttributes);
		return "redirect:/index/index";
		
	}
	@RequestMapping("/me_agree")
	public void memberagree(){
		
	}
	@RequestMapping(value="/me_join", method=RequestMethod.POST)
	public String memberJoin(MemberDTO memberDTO){
		memberService.join(memberDTO);
		return "member/me_joinsuccess";
	}
	@RequestMapping(value="/me_join", method=RequestMethod.GET)
	public void memberJoinForm(){};
	
	
	@RequestMapping(value="/me_logOut")
	public String memberlogOut(HttpSession session){
		memberService.logout(session);
		return "redirect:/index/index";
	};
	
	
}
