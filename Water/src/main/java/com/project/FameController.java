package com.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FameController {
	
	@Autowired
	private FameDao dao;
	
	@RequestMapping("/halloffame.do")
	public ModelAndView list() {	
		ModelAndView model=new ModelAndView();
		List<FameDto> list=dao.findList();
		model.addObject("list", list);
		model.setViewName("/1/content/halloffame");
		return model;
	}
	
	/*@RequestMapping("/halloffame.do")
	public String test1() {
		return "/1/content/halloffame";
	}*/
	
	@RequestMapping("/test.do")
	public String test2() {
		return "/1/content/test";
	}
}
