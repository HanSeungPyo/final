package com.finals.customer;



import org.springframework.ui.Model;

public interface CustomerService {

	public void write(NoticeDTO noticeDTO);
	public void list(int curPage,Model model);
	public NoticeDTO veiw(int num);
	public void modify(NoticeDTO noticeDTO);
	public void delete(int num);
	
	
	public void faqWrite(FaqDTO faqDTO);
	public void faqList(int curPage,Model model);
	public void faqModify(FaqDTO faqDTO);
	public void faqDelete(int num);
	public FaqDTO faqView(int num);
	
	public void search(CustomerSearchType customerSearchType,Model model);
}
