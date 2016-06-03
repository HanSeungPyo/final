package com.finals.member;

import javax.servlet.http.HttpSession;


public interface MemberService {
	
	public MemberDTO login(MemberDTO memberDTO,HttpSession session);
	
	public void logout(HttpSession session);
	
	public void join(MemberDTO memberDTO);
}
