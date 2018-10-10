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
		
		List<FameDto> list1=dao.findList1();
		List<FameDto> list2=dao.findList2();
		List<FameDto> list3=dao.findList3();
		List<FameDto> list4=dao.findList4();
		List<FameDto> list5=dao.findList5();
		List<FameDto> list6=dao.findList6();
		
		model.addObject("list1", list1);
		model.addObject("list2", list2);
		model.addObject("list3", list3);
		model.addObject("list4", list4);
		model.addObject("list5", list5);
		model.addObject("list6", list6);
		
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
