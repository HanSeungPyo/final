package com.finals.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public MemberDTO login(MemberDTO memberDTO, HttpSession session) {
		try {
			memberDTO=memberDAO.login(memberDTO);
			session.setAttribute("member", memberDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return memberDTO;
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate();

	}
	
	@Override
	public void join(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		try {
			memberDAO.memberInsert(memberDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
