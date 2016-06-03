package com.finals.member;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace="MemberMapper.";
	
	@Override
	public MemberDTO login(MemberDTO memberDTO) throws Exception {
		
		return sqlSession.selectOne(namespace+"login", memberDTO);
	}

	@Override
	public MemberDTO selectMemberById(String id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean memberCheck(String id, String pw) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean memberInsert(MemberDTO memberDTO) throws Exception {
		// TODO Auto-generated method stub
		int num=sqlSession.insert(namespace+"join", memberDTO);
		if(num >0){
			return true;
		}else {
			return false;
		}
		
	}

}
