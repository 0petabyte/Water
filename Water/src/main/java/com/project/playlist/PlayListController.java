package com.project.playlist;

import java.util.HashMap;
import java.util.List;
import java.util.StringTokenizer;

import org.openqa.selenium.remote.server.handler.GetElementAttribute;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
		return "redirect:main.do";
	}

	/*@RequestMapping("selectlist.do")
	public ModelAndView selectlist(@RequestParam String userid) {
		String user=userid;
		System.out.println(user);
		ModelAndView model=new ModelAndView();
		List<PlayListDto> list=pdao.getPlist();
		return model;
	}*/

	/*@RequestMapping(value="selectlist.do", method= RequestMethod.GET)
	@ResponseBody
	public ModelAndView selectlist(@RequestParam String userid) {
		String user=userid;
		System.out.println(user);
		HashMap<String, Object> hashmap=new HashMap<String, Object>();
		
		List<PlayListDto> plist=pdao.selectplist(user);
		for(PlayListDto dto:plist) {
			String artist=dto.getArtist();
			String title=dto.getTitle();
			String youurl=dto.getYouurl();
		}
		ModelAndView model=new ModelAndView();
		model.addObject("plist", plist);
		model.setViewName("/1/layout/top");
		return model;
	}*/
	
	/*@RequestMapping(value="selectlist.do", method= RequestMethod.GET)
	public List<PlayListDto> selectlist(@RequestParam String userid) {
		String user=userid;
		System.out.println(user);
		List<PlayListDto> plist=pdao.selectplist(user);
		for(PlayListDto dto:plist) {
			String artist=dto.getArtist();
			String title=dto.getTitle();
			String youurl=dto.getYouurl();
		}
		
		return plist;
	}*/
}
