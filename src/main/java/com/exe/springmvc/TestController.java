package com.exe.springmvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("test.controller")
public class TestController {

	/*@RequestMapping(value="/test/param.action", method=RequestMethod.GET)
	public String processGetRequest() {
		System.out.println("GET 방식 Request");
		
		return "paramResult";
	}
	@RequestMapping(value="/test/param.action", method=RequestMethod.POST)
	public String processPostRequest() {
		System.out.println("Post 방식 Request");
		
		return "paramResult";
	}
	*/
	@RequestMapping(value="/test/param.action", method= {RequestMethod.POST,RequestMethod.GET})
	public String processPostRequest(PersonDTO dto, String phone, HttpServletRequest req) {
		System.out.println("GET/Post 방식 Request");
		
		System.out.println(phone);
		System.out.println(req.getParameter("phone"));
		
		System.out.println(dto);
		System.out.println("dto.getName() : " + dto.getName());
		System.out.println("dto.getPhone() : " + dto.getPhone());
		System.out.println("dto.getEmail() : " + dto.getEmail());
		
		return "paramResult";
	}
	
	@RequestMapping(value="/test/mav.action", method= {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView mavRequest(PersonDTO dto) {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("paramResult");
		mav.addObject("dto",dto);
		
		return mav;
		
		
	}
	
	@RequestMapping(value="/test/redirect.action", method= {RequestMethod.POST,RequestMethod.GET})
	public String redirectRequest() {
		
//		return "redirect:/";
		return "redirect:/hello.action";
		
	}
	
}
