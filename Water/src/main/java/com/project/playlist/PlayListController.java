package com.project.playlist;

import java.util.StringTokenizer;

import org.openqa.selenium.remote.server.handler.GetElementAttribute;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PlayListController {
	@RequestMapping(value="addlist.do", method=RequestMethod.GET)
	public String insertlist(@RequestParam String title, String artist, String youurl, String userid) {
		ModelAndView model=new ModelAndView();
		
		System.out.println("출력:"+title);
		System.out.println("출력:"+artist);
		System.out.println("출력:"+youurl);
		System.out.println("출력:"+userid);
		
		StringTokenizer st=new StringTokenizer(title, ",");
		
		
		return "redirect:main.do";
	}
	
	/*@RequestMapping(value="addlist.do", method=RequestMethod.GET)
	public ModelAndView insertlist(@RequestParam String test) {
		ModelAndView model=new ModelAndView();
		
		System.out.println("출력:"+test);
		
		return model;
	}*/
}
