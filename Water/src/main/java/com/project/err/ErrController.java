package com.project.err;

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
public class ErrController {
	@Autowired
	ErrDao edao;
	
	/*@RequestMapping("/error.do")
	public ModelAndView list()
	{
		ModelAndView model=new ModelAndView();
		List<ErrDto> list=edao.getErrlist();
		
		model.addObject("list",list);
		model.addObject("total",list.size());
		model.setViewName("/1/content/errboard");
		return model;
	}*/
	//글쓰기폼
	@RequestMapping("/writeform.do")
	public String form()
	{
		return "/1/content/writeform";
	}
	//글쓰기
	@RequestMapping("/write.do")
	public String write(@ModelAttribute ErrDto dto,HttpServletRequest request)
	{
		//업로드되는 프로젝트내부의 save 폴더의 실제경로 구하기
		String path=request.getSession().getServletContext().getRealPath("/save");
		System.out.println("path:"+path);
		
		SpringFileWriter writer=new SpringFileWriter();
		String filenames=writer.writeFile(dto.getImgfile(), path);
		System.out.println("filenames:"+filenames);
		//여러개의 파일명을 dto 의 이미지명에 저장하기
		dto.setImgname(filenames);
		
		edao.insertBoard(dto);
		return "redirect:error.do";
	}
	
	@RequestMapping("/writeform2.do")
	public String test()
	{
		return "/1/content/errwriteform";
	} 
	
	

	@RequestMapping("/error.do")
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
		totalCount=edao.getTotalCount();

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
		
		List<ErrDto> list=edao.getList(startNum, endNum);
		for(ErrDto dto:list)
		{
			int num=dto.getE_num();
			String etitle=dto.getEtitle();
			int n=edao.getAnswers(num).size();
			etitle+=":"+n;
			dto.setEtitle(etitle);
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
		
		model.setViewName("/1/content/errboard");
		return model;
	}
	//글읽기
	@RequestMapping("/read.do")
	public ModelAndView read(@RequestParam int e_num,@RequestParam int pageNum,
		HttpServletRequest request)
	{
		ModelAndView model=new ModelAndView();
		
		ErrDto dto=edao.getData(e_num);
		
		//이미지가 실제 save 경로에 있는지 체크하기
		Vector<String> flist=new Vector<String>();
		String path=request.getSession().getServletContext().getRealPath("/save");
		if(!dto.getImgname().equals("none"))
		{
			String []imgfiles=dto.getImgname().split(":");
			for(String img:imgfiles)
			{
				File f=new File(path+"\\"+img);
				if(f.exists())
					flist.add("yes");
				else
					flist.add("no");
			}
		}
		
		List<AnswerDto> alist=edao.getAnswers(e_num);
		model.addObject("alist",alist);//댓글목록
		model.addObject("acount",alist.size());//댓글수
		model.addObject("flist",flist);
		model.addObject("dto",dto);
		model.addObject("pageNum",pageNum);
		model.setViewName("/1/content/content");
		return model;
	}
	//삭제
	@RequestMapping("/delete.do")
	public String delete(@RequestParam int e_num, @RequestParam int pageNum)
	{
		edao.deletedata(e_num,pageNum);
		return "redirect:error.do?pageNum=" +pageNum;
	}
	//수정
	@RequestMapping(value="/updateform.do", method= RequestMethod.GET)
	public ModelAndView updateform(@RequestParam("e_num") int e_num,
									HttpSession session)
	{
		ModelAndView model = new ModelAndView();
		ErrDto dto=edao.updateForm(e_num);
		model.setViewName("/1/content/updateform");
		model.addObject("dto",dto);
		return model;
	}
	
	@RequestMapping(value="/update.do", method=RequestMethod.POST)
	public String update(ErrDto dto)
	{
		edao.update(dto);
		return "redirect:/error.do";
	}
	
	//댓글
	@RequestMapping("/answer.do")
	public String answer(
			@ModelAttribute AnswerDto adto,
			@RequestParam int pageNum)
	{
		edao.insertAnswer(adto);
		return "redirect:read.do?e_num="+adto.getE_num()+"&pageNum="+pageNum;
	}
	

	
}
