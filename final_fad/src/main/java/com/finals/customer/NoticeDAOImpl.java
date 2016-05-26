package com.finals.customer;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class
NoticeDAOImpl implements NoticeDAO {

	@Autowired
	private SqlSession sqlSession;
	private static final String NAMESPACE="NoticeMapper.";
	
	
	@Override
	public void write(NoticeDTO noticeDTO) {
		/*sqlSession.insert(NAMESPACE+"write", noticeDTO);*/
	}
}
