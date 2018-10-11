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
   public ModelAndView chucheonlist()
   {
      ModelAndView model=new ModelAndView();
      List<ChuCheonBBSDto> clist= dao.findcList();
         
      model.addObject("clist",clist);
      model.addObject("count",clist.size());
      model.setViewName("/1/content/chucheonlist");
      
      return model;
      
   }

}