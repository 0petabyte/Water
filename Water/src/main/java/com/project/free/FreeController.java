package com.project.free;

import java.io.File;
import java.util.List;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class FreeController {
	@Autowired
	FreeDao fdao;
	@RequestMapping("/free.do")
	public ModelAndView list(
			@RequestParam(value="pageNum",defaultValue="1") int currentPage)
	{
		ModelAndView model=new ModelAndView();
		
		
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
		totalCount=fdao.getTotalCount();

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
		startNum=(currentPage-1)*perPage+1;
		endNum=startNum+perPage-1;

		if(endNum>totalCount)
			endNum=totalCount;

		//각 페이지의 시작 번호
		int no=totalCount-(currentPage-1)*perPage;
		
		List<FreeDto> list=fdao.getList(startNum, endNum);
		for(FreeDto dto:list)
		{
			int num=dto.getF_num();
			String ftitle=dto.getFtitle();
			int n=fdao.getAnswers(num).size();
			ftitle+=":"+n;
			dto.setFtitle(ftitle);
		}
		
		
		//request 에 담을 값들
		model.addObject("list",list);
		model.addObject("total",list.size());
		model.addObject("totalCount",totalCount);
		model.addObject("totalPage",totalPage);
		model.addObject("startPage",startPage);
		model.addObject("endPage",endPage);
		model.addObject("currentPage",currentPage);		
		model.addObject("no",no);		
		
		model.setViewName("/1/content/freeboard");
		return model;
	}
	//글쓰기폼
	@RequestMapping("/fwriteform.do")
	public String form()
	{
		return "/1/content/fwriteform";
	}
	//글쓰기
	@RequestMapping("/fwrite.do")
	public String write(@ModelAttribute FreeDto dto,HttpServletRequest request)
	{
		fdao.insertBoard(dto);
		return "redirect:free.do";
	}
	//글읽기
		@RequestMapping("/fread.do")
		public ModelAndView read(@RequestParam int f_num,@RequestParam int pageNum,
			HttpServletRequest request)
		{
			ModelAndView model=new ModelAndView();
			
			FreeDto dto=fdao.getData(f_num);
			
			
			List<FreeAnswerDto> alist=fdao.getAnswers(f_num);
			model.addObject("alist",alist);//댓글목록
			model.addObject("acount",alist.size());//댓글수
			model.addObject("dto",dto);
			model.addObject("pageNum",pageNum);
			model.setViewName("/1/content/fcontent");
			return model;
		}
		//삭제
		@RequestMapping("/fdelete.do")
		public String delete(@RequestParam int f_num, @RequestParam int pageNum)
		{
			fdao.deletedata(f_num,pageNum);
			return "redirect:free.do?pageNum=" +pageNum;
		}
		//수정
		@RequestMapping(value="/fupdateform.do", method= RequestMethod.GET)
		public ModelAndView updateform(@RequestParam("f_num") int f_num,
										HttpSession session)
		{
			ModelAndView model = new ModelAndView();
			FreeDto dto=fdao.updateForm(f_num);
			model.setViewName("/1/content/fupdateform");
			model.addObject("dto",dto);
			return model;
		}
		
		@RequestMapping(value="/fupdate.do", method=RequestMethod.POST)
		public String update(FreeDto dto)
		{
			fdao.update(dto);
			return "redirect:/free.do";
		}
		
		//댓글
		@RequestMapping("/fanswer.do")
		public String answer(
				@ModelAttribute FreeAnswerDto fadto,
				@RequestParam int pageNum)
		{
			fdao.insertAnswer(fadto);
			return "redirect:fread.do?f_num="+fadto.getF_num()+"&pageNum="+pageNum;
		}
		
}
