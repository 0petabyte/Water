package com.project;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FameController {
	@RequestMapping("/halloffame.do")
	public String test1() {
		return "/1/content/halloffame";
	}
	
	@RequestMapping("/test.do")
	public String test2() {
		return "/1/content/test";
	}
}
