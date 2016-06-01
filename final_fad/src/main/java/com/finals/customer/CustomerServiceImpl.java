package com.finals.customer;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.finals.util.CustomerPageMaker;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDAO customerDAO;
	
	@Override
	public void search(CustomerSearchType customerSearchType, Model model) {
		List<FaqDTO> ar=null;
		try {
			CustomerPageMaker customerPageMaker=new CustomerPageMaker(1, customerDAO.searchCount(customerSearchType));
			ar=customerDAO.search(customerSearchType);
			model.addAttribute("searchList", ar);
			model.addAttribute("searchPage", customerPageMaker);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	@Override
	public void faqWrite(FaqDTO faqDTO) {
		try {
			customerDAO.faqWrite(faqDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	@Override
	public void faqList(int curPage, Model model) {
		List<FaqDTO> ar=null;
		try {	
			int totalCount=customerDAO.faqCount();
			CustomerPageMaker page=new CustomerPageMaker(curPage,totalCount);
			ar=customerDAO.faqList(page);
			model.addAttribute("faq", ar);
			model.addAttribute("faqPage", page);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	@Override
	public void faqModify(FaqDTO faqDTO) {
		try {
			customerDAO.faqModify(faqDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	@Override
	public void faqDelete(int num) {
		try {
			customerDAO.faqDelete(num);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	@Override
	public FaqDTO faqView(int num) {
		FaqDTO faqDTO=null;
		try {
			faqDTO=customerDAO.faqView(num);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return faqDTO;
	}
	
	
	
	@Override
	public void write(NoticeDTO noticeDTO) {
		try {
			customerDAO.write(noticeDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public void list(int curPage,Model model) {
		List<NoticeDTO> ar=null;
		try {	
			int totalCount=customerDAO.count();
			CustomerPageMaker page=new CustomerPageMaker(curPage,totalCount);
			ar=customerDAO.list(page);
			model.addAttribute("notice", ar);
			model.addAttribute("noticePage", page);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public NoticeDTO veiw(int num) {
		NoticeDTO noticeDTO=null;
		try {
			customerDAO.countUpdate(num);
			noticeDTO=customerDAO.view(num);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return noticeDTO;
	}
	
	@Override
	public void modify(NoticeDTO noticeDTO) {
		try {
			customerDAO.modify(noticeDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public void delete(int num) {
		try {
			customerDAO.delete(num);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
