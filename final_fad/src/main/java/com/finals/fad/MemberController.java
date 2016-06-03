package com.finals.fad;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.finals.member.MemberDTO;
import com.finals.member.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/me_login")
	public String memberlogin(MemberDTO memberDTO, HttpSession session){
		memberService.login(memberDTO, session);
		return "/";
		
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
	
	
	
}
