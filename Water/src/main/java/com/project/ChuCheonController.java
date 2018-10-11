package com.project;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class ChuCheonController {
   
   @Autowired
   private ChuDao dao;
   
   /*@RequestMapping("/chucheonform.do")
   public ModelAndView chucheon(@RequestParam String musicid)
   {
      ModelAndView model = new ModelAndView();
      UserDto dto=dao.getSearchMusicid(musicid);
      
      
      model.addObject("dto",dto);
      model.setViewName("/1/content/chucheonform");
      
      return model;
   }*/
   
   @RequestMapping("/chucheonform.do")
   public ModelAndView chucheon(@RequestParam(value="_selected_",required=true) List<String> _selected_)
   {
      ModelAndView model = new ModelAndView();
      
      UserDto []dtos=new UserDto[_selected_.size()];
      for(int i=0;i<_selected_.size();i++){
    	  String musicid=_selected_.get(i);
    	  System.out.println("뮤직아이디:"+i+"번째 "+musicid);
    	  dtos[i]=dao.getSearchMusicid(musicid);
    	  
      }
      
      
      model.addObject("dtos", dtos);
      model.setViewName("/1/content/chucheonform");
      
      return model;
   }
   
   
   @RequestMapping("/chucheon.do")
   public String cinsert(@ModelAttribute ChuCheonBBSDto cdto)
   {
      dao.cinsert(cdto);
      return "redirect:chucheonlist.do";
   }
   
   @RequestMapping("/chucheonlist.do")
   public ModelAndView chucheonlist(@RequestParam(value="pageNum",defaultValue="1") int currentPage)
   {
      ModelAndView model=new ModelAndView();
      List<ChuCheonBBSDto> clist= dao.findcList();
      
	  	//페이징처리
		//페이징에 처리에 필요한 변수들
		int perPage=10; //한페이지당 보여지는 게시글의 갯수
		int totalCount=0; //총 개시글의 개수
		int totalPage;//총페이지수
		int startNum;//각페이지당 보여지는 글의 시작번호
		int endNum;
		int perBlock=5; //한블럭당 보여지는 페이지의 개수
		int startPage; //각블럭당 보여지는 페이지의 시작번호
		int endPage;
				
		//총갯수
		totalCount=clist.size();
	
		//총페이지수,나머지가 있으면 무조건올림
		//총게시글이 37-한페이지 3-12.3333....13페이지
		totalPage=totalCount/perPage+(totalCount%perPage>0?1:0);
	
		//각블럭의 시작페이지와 끝페이지
		startPage=(currentPage-1)/perBlock*perBlock+1;
		endPage=startPage+perBlock-1;
	
		//endPage는 totalPage를 넘지않도록 한다
		if(endPage>totalPage)
			endPage=totalPage;
	
		//각페이지당 불러올 글의 번호
		//1페이지:1~10 2페이지:11~20 3페이지:31-40
		startNum=(currentPage-1)*perPage;
		endNum=startNum+perPage-1;
	
		if(endNum>=totalCount)
			endNum=totalCount-1;
	
		//각 페이지의 시작 번호
		int no=totalCount-(currentPage-1)*perPage;
				
		//request 에 담을 값들
		
		model.addObject("totalCount",totalCount);
		model.addObject("totalPage",totalPage);
		model.addObject("startPage",startPage);
		model.addObject("endPage",endPage);
		model.addObject("currentPage",currentPage);		
		model.addObject("no",no);
		model.addObject("startNum",startNum);
		model.addObject("endNum",endNum);
         
      model.addObject("clist",clist);
      model.addObject("count",clist.size());
      model.setViewName("/1/content/chucheonlist");
      
      return model;
      
   }

}