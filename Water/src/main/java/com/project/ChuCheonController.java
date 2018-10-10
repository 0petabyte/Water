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
   public ModelAndView chucheon(HttpServletRequest request)
   {
      ModelAndView model = new ModelAndView();
      
      request.getParameterValues("_selected_");
      
      
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