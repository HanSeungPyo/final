package com.finals.customer;

import java.util.List;

import com.finals.util.CustomerPageMaker;

public interface CustomerDAO {

	public void write(NoticeDTO noticeDTO) throws Exception;
	public List<NoticeDTO> list(CustomerPageMaker customerPageMaker) throws Exception;
	public int count() throws Exception;
	public NoticeDTO view(int num) throws Exception;
	public void modify(NoticeDTO noticeDTO) throws Exception;
	public void delete(int num)throws Exception;
	public void countUpdate(int num) throws Exception;
	
	public void faqWrite(FaqDTO faqDTO)throws Exception;
	public List<FaqDTO> faqList(CustomerPageMaker customerPageMaker) throws Exception;
	public int faqCount() throws Exception;
	public FaqDTO faqView(int num) throws Exception;
	public void faqModify(FaqDTO faqDTO) throws Exception;
	public void faqDelete(int num)throws Exception; 
	
	public List<FaqDTO> search(CustomerSearchType customerSearchType) throws Exception;
	public int searchCount(CustomerSearchType customerSearchType) throws Exception;
}


