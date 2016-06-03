package com.finals.member;

import java.sql.SQLException;

import org.springframework.jdbc.core.JdbcTemplate;

import com.finals.member.MemberDTO;

public interface MemberDAO {
	
	
	public MemberDTO login(MemberDTO memberDTO) throws Exception;
	
	//회원상세 조회 (**1건의 데이터_(여러건 아니다.))
    MemberDTO selectMemberById(String id) throws Exception;
    
    //회원 유무를 판단하는 조회 메서드
    boolean memberCheck(String id, String pw) throws Exception;
 
    //회원가입 메서드
    boolean memberInsert(MemberDTO memberDTO) throws Exception; 
    	
}
