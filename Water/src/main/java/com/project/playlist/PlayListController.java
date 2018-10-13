package com.project.playlist;

import java.util.StringTokenizer;

import org.openqa.selenium.remote.server.handler.GetElementAttribute;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.err.ErrDao;

@Controller
public class PlayListController {
	@Autowired
	PlayListDao pdao;
	
	@RequestMapping(value="addlist.do", method=RequestMethod.GET)
	public String insertlist(@ModelAttribute PlayListDto dto, @RequestParam String title, String artist, String youurl, String userid) {
		ModelAndView model=new ModelAndView();
		
		System.out.println("출력:"+title);
		System.out.println("출력:"+artist);
		System.out.println("출력:"+youurl);
		System.out.println("출력:"+userid);
		
		StringTokenizer a=new StringTokenizer(artist, ">");
		StringTokenizer t=new StringTokenizer(title, ">");
		StringTokenizer y=new StringTokenizer(youurl, ">");
		
		int len = a.countTokens();    //토큰의 갯수
	    System.out.println("len = " + len);
	    String art;
	    String tit;
	    String url;
	    
	   for(int i=0; i<len; i++) {
	    	art=a.nextToken();
	    	tit=t.nextToken();
	    	url=y.nextToken();
	    	/*System.out.println(a.nextToken());
	    	System.out.println(t.nextToken());
	    	System.out.println(y.nextToken());*/
	    	dto.setUserid(userid);
	    	dto.setArtist(art);
	    	dto.setTitle(tit);
	    	dto.setYouurl(url);
	    	pdao.insertplist(dto);
	    }
	    dto.setUserid("aaa");
    	dto.setArtist("abba");
    	dto.setTitle("adsfa");
    	dto.setYouurl("abbdfa");
    	pdao.insertplist(dto);
		return "redirect:main.do";
	}

	
	/*@RequestMapping(value="addlist.do", method=RequestMethod.GET)
	public ModelAndView insertlist(@RequestParam String test) {
		ModelAndView model=new ModelAndView();
		
		System.out.println("출력:"+test);
		
		return model;
	}*/
}
