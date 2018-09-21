package com.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ListController {
	
	@Autowired
	private UserDao dao;
	
	
/*	@RequestMapping("/main.do")
	public String test1() {
	
		return "/1/layout/body";
	}*/
	
	//ModelAndView erasonglist : jiung 0919.16:00//
	@RequestMapping("/main.do")
	public ModelAndView list()
	{
		ModelAndView model=new ModelAndView();
		List<UserDto> list=dao.findList();
		
		model.addObject("list",list);
		model.addObject("count",list.size());
		model.setViewName("/1/content/erasonglist");
		
		return model;
		
	}
	
	@RequestMapping("/sns.do")
	public String test1() {
		return "/1/content/realtimesns";
	}
	
}

/*package com.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ListController {

	@Autowired
	private UserDao dao;
	
	@RequestMapping("/main.do")
	public ModelAndView list()
	{
		ModelAndView model=new ModelAndView();
		List<UserDto> list=dao.findList();
		
		model.addObject("list",list);
		model.addObject("count",list.size());
		model.setViewName("boardlist");
		return "/1/layout/body";
	}
	*/
/*	@RequestMapping("/mongo/content.do")
	public ModelAndView content(@RequestParam String title)
	{
		ModelAndView model=new ModelAndView();
		
		UserDto dto=dao.getSearchName(title);
		model.addObject("dto",dto);
		model.setViewName("content");
		return model;
	}
}*/
