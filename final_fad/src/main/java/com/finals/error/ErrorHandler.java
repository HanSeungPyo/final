package com.finals.error;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class ErrorHandler {

	public ModelAndView errorHandler(Exception e) {
		e.printStackTrace();
		ModelAndView mv = new ModelAndView();
		mv.addObject("error", "error");
		mv.setViewName("error/error500");
		return  mv;
	}
	
}
