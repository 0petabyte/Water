package com.project;

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
	
	
/*	@RequestMapping("/main.do")
	public String test1() {
	
		return "/1/layout/body";
	}*/
	
	//ModelAndView erasonglist : jiung 0919.16:00//
	@RequestMapping("/main.do")
	public ModelAndView list(@RequestParam(value="pageNum",defaultValue="1") int currentPage, String keyWord, String keyField)
	{
		ModelAndView model=new ModelAndView();
		List<UserDto> list=dao.findList(keyWord, keyField);
		
		
		//페이징처리
		//페이징에 처리에 필요한 변수들
		int perPage=15; //한페이지당 보여지는 게시글의 갯수
		int totalCount=0; //총 개시글의 개수
		int totalPage;//총페이지수
		int startNum;//각페이지당 보여지는 글의 시작번호
		int endNum;
		int perBlock=5; //한블럭당 보여지는 페이지의 개수
		int startPage; //각블럭당 보여지는 페이지의 시작번호
		int endPage;

		//총갯수
		totalCount=list.size();

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

		if(endNum>totalCount)
			endNum=totalCount-1;
		
		if(endNum<0)
			endNum=1;

		//각 페이지의 시작 번호
		int no=totalCount-(currentPage-1)*perPage;
		
		//request 에 담을 값들
		model.addObject("list",list);
		model.addObject("totalCount",totalCount);
		model.addObject("totalPage",totalPage);
		model.addObject("startPage",startPage);
		model.addObject("endPage",endPage);
		model.addObject("currentPage",currentPage);		
		model.addObject("no",no);		
		model.addObject("startNum",startNum);		
		model.addObject("endNum",endNum);
		
		
		
		model.addObject("listd",list);
		model.addObject("count",list.size());
		
		model.setViewName("/1/content/erasonglist");
		
		

		
		return model;
		
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
