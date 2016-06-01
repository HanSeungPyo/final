package com.finals.customer;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.finals.util.CustomerPageMaker;

@Repository
public class
CustomerDAOImpl implements CustomerDAO {

	@Autowired
	private SqlSession sqlSession;
	private static final String NAMESPACE="CustomerMapper.";
	
	
	@Override
	public List<FaqDTO> search(CustomerSearchType customerSearchType) throws Exception {
		return sqlSession.selectList(NAMESPACE+"search", customerSearchType);
	}
	
	@Override
	public int searchCount(CustomerSearchType customerSearchType) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"searchCount", customerSearchType);
	}
	
	@Override
	public void faqWrite(FaqDTO faqDTO) throws Exception {
		sqlSession.insert(NAMESPACE+"faqWrite", faqDTO);
		
	}
	
	@Override
	public int faqCount() throws Exception {
		return sqlSession.selectOne(NAMESPACE+"faqCount");
		
	}
	
	@Override
	public List<FaqDTO> faqList(CustomerPageMaker customerPageMaker) throws Exception {	
		return sqlSession.selectList(NAMESPACE+"faqList", customerPageMaker);
	}
	
	
	@Override
	public void faqDelete(int num) throws Exception {
		sqlSession.delete(NAMESPACE+"faqDelete", num);
		
	}
	
	@Override
	public void faqModify(FaqDTO faqDTO) throws Exception {
		sqlSession.update(NAMESPACE+"faqModify", faqDTO);
		
	}
	
	@Override
	public FaqDTO faqView(int num) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"faqView",num);
	}
	
	@Override
	public void write(NoticeDTO noticeDTO) throws Exception{
		sqlSession.insert(NAMESPACE+"write", noticeDTO);
	}
	
	@Override
	public List<NoticeDTO> list(CustomerPageMaker customerPageMaker) throws Exception {
		return sqlSession.selectList(NAMESPACE+"list", customerPageMaker );
	}
	
	@Override
	public int count() throws Exception {
		return sqlSession.selectOne(NAMESPACE+"count");
	}
	
	@Override
	public NoticeDTO view(int num) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"view",num);
	}
	
	@Override
	public void modify(NoticeDTO noticeDTO) throws Exception {
		sqlSession.update(NAMESPACE+"modify", noticeDTO);
		
	}
	
	@Override
	public void delete(int num) throws Exception {
		sqlSession.delete(NAMESPACE+"delete", num);
		
	}
	
	@Override
	public void countUpdate(int num) throws Exception {
		sqlSession.update(NAMESPACE+"countUpdate", num);
		
	}
	
}
