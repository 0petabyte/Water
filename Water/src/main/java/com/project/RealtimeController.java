package com.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RealtimeController {
	
	@Autowired
	private RealtimeDao dao;

	@RequestMapping("/reallist.do")
	public ModelAndView list() {
		
		ModelAndView model=new ModelAndView();
		List<RealtimeDto> list=dao.findList();
		
		model.addObject("list",list);
		
		model.setViewName("/1/content/realtimelist");
		
		return model;
	}
}
