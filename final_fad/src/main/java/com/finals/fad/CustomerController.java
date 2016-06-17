package com.finals.fad;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.finals.customer.NoticeDTO;
import com.finals.customer.CustomerSearchType;
import com.finals.customer.CustomerService;
import com.finals.customer.FaqDTO;
import com.finals.customer.PhotoVo;

@Controller
@RequestMapping(value="/customer/*")
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	
	
	@RequestMapping(value="/ct_searchList", method=RequestMethod.GET)
	public void search(CustomerSearchType customerSearchType, Model model){
		System.out.println(customerSearchType);
		customerService.search(customerSearchType, model);
	}

	@RequestMapping(value="/ct_faq/faqWriteForm")
	public void faqWriteForm(){}
	
	@RequestMapping(value="/ct_faq/faqWrite")
	public String faqWrite(FaqDTO faqDTO){
		customerService.faqWrite(faqDTO);
		return "redirect:/customer/ct_faq/faqList";
	}
	
	@RequestMapping(value="/ct_faq/faqModifyForm")
	public void faqModifyForm(@RequestParam int num,Model model){
		FaqDTO faqDTO=customerService.faqView(num);
		model.addAttribute("faqView", faqDTO);
	}
	
	@RequestMapping(value="/ct_faq/faqModify")
	public String faqModify(FaqDTO faqDTO){
		customerService.faqModify(faqDTO);
		return "redirect:/customer/ct_faq/faqList";
	}
	
	
	@RequestMapping(value="/ct_faq/faqList")
	public void faqList(@RequestParam(defaultValue="1") int curPage,Model model){
		customerService.faqList(curPage, model);
	}
	
	@RequestMapping(value="/ct_faq/faqDelete")
	public String faqDelete(@RequestParam int num){
		customerService.faqDelete(num);
		return "redirect:/customer/ct_faq/faqList";
	}

	@RequestMapping(value="/ct_notice/noticeList")
	public void noticeList(@RequestParam(defaultValue="1") int curPage,Model model){
		customerService.list(curPage,model);
	}
	
	@RequestMapping(value="/ct_notice/noticeWriteForm")
	public void noticeWriteForm(){}
	
	@RequestMapping(value="/ct_notice/noticeWrite")
	public String noticeWrite(NoticeDTO noticeDTO,HttpServletRequest request){
		customerService.write(noticeDTO);
		return "redirect:/customer/ct_notice/noticeList";
	}
	
	@RequestMapping(value="/ct_notice/noticeView")
	public void noticeView(@RequestParam int num, Model model){
		NoticeDTO noticeDTO=customerService.veiw(num);
		model.addAttribute("noticeView", noticeDTO);
	}
	
	
	@RequestMapping(value="/ct_notice/noticeModifyForm")
	public void noticeModiForm(@RequestParam int num,Model model){
		NoticeDTO noticeDTO=customerService.veiw(num);
		model.addAttribute("noticeView", noticeDTO);
		
	}
	
	
	@RequestMapping(value="/ct_notice/noticeModify")
	public String noticeModify(NoticeDTO noticeDTO){
		customerService.modify(noticeDTO);
		return "redirect:/customer/ct_notice/noticeList";
	}
	
	@RequestMapping(value="/ct_notice/noticeDelete")
	public String noticeDelete(@RequestParam int num){
		customerService.delete(num);
		return "redirect:/customer/ct_notice/noticeList";
	}
	
	
	@RequestMapping(value="/photoUpload", method =  RequestMethod.POST)
	public String photoUpload(HttpServletRequest request,PhotoVo vo){
			
			    String callback = vo.getCallback();
			    String callback_func = vo.getCallback_func();
			    String file_result = "";
			    try {
			        if(vo.getFiledata() != null && vo.getFiledata().getOriginalFilename() != null && !vo.getFiledata().getOriginalFilename().equals("")){
			            //파일이 존재하면
			            String original_name = vo.getFiledata().getOriginalFilename();
			            String ext = original_name.substring(original_name.lastIndexOf(".")+1);
			            //파일 기본경로
			            String defaultPath = request.getSession().getServletContext().getRealPath("/");
			            //파일 기본경로 _ 상세경로
			            String path = defaultPath + "resources" + File.separator + "photo_upload" + File.separator;              
			            File file = new File(path);
			            System.out.println("path:"+path);
			            //디렉토리 존재하지 않을경우 디렉토리 생성
			            if(!file.exists()) {
			                file.mkdirs();
			            }
			            //서버에 업로드 할 파일명(한글문제로 인해 원본파일은 올리지 않는것이 좋음)
			            String realname = UUID.randomUUID().toString() + "." + ext;
			        ///////////////// 서버에 파일쓰기 ///////////////// 
			            vo.getFiledata().transferTo(new File(path+realname));
			            String contextPath = request.getContextPath();
			            file_result += "&bNewLine=true&sFileName="+original_name+"&sFileURL="+contextPath+"/resources/photo_upload/"+realname;
			        } else {
			            file_result += "&errstr=error";
			        }
			    } catch (Exception e) {
			        e.printStackTrace();
			    }
			    return "redirect:/"+ callback +"?callback_func="+callback_func+file_result;
			
			/*return "redirect:/"+return1+return2+return3;*/
		
	    
	}


	
}
