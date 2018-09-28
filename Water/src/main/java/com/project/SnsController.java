package com.project;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SnsController {
	@RequestMapping("/sns.do")
	public String test1() {
		return "/1/content/realtimesns";
	}
}
