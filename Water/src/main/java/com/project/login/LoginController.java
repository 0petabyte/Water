package com.project.login;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.connect.Connection;
import org.springframework.social.google.api.Google;
import org.springframework.social.google.api.impl.GoogleTemplate;
import org.springframework.social.google.api.plus.Person;
import org.springframework.social.google.api.plus.PlusOperations;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.oauth2.AccessGrant;
import org.springframework.social.oauth2.GrantType;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	
	@Autowired
	private UserDao1 dao;
	
	@Autowired
	private GoogleConnectionFactory googleConnectionFactory;
	@Autowired
	private OAuth2Parameters googleOAuth2Parameters;
	
	private OAuth2Operations oauthOperations;
	
		
	// 회원 가입 페이지
    @RequestMapping(value = "/join.do", method = { RequestMethod.GET, RequestMethod.POST })
    public String join(HttpServletResponse response, Model model) {
    	
        oauthOperations = googleConnectionFactory.getOAuthOperations();
        String url = oauthOperations.buildAuthenticateUrl(GrantType.AUTHORIZATION_CODE, googleOAuth2Parameters);
        System.out.println("/googleLogin, url : " + url);
        model.addAttribute("google_url", url);
 
        return "/1/content/join";
    }
 
 
    // ------------------------------------ 구글 콜백 ----------------------------------------
    
    @RequestMapping(value = "/googleSignIn.do", method = { RequestMethod.GET, RequestMethod.POST })
    public ModelAndView doSessionAssignActionPage(HttpServletRequest request,HttpSession session) throws Exception {
    	
    	ModelAndView model = new ModelAndView();
    	
    	/*String dbPass=dao.join(user_uid);
    	String view=null;
    	if(dbPass==null){
    		view="join";
    	}else{
    		if(user_uid.equals(dbPass)){
    			session.invalidate();
    			session=request.getSession();
    			session.setAttribute("user_uid", user_uid);
    			
    			view="redirect:/join";
    			
    		}else {
    			view="passFail";
    		}
    	}*/
    	
        String code = request.getParameter("code");
 
        oauthOperations = googleConnectionFactory.getOAuthOperations();
        AccessGrant accessGrant = oauthOperations.exchangeForAccess(code, googleOAuth2Parameters.getRedirectUri(),
                null);
 
        String accessToken = accessGrant.getAccessToken();
        session.setAttribute("token", accessToken);
        Long expireTime = accessGrant.getExpireTime();
        
 
        if (expireTime != null && expireTime < System.currentTimeMillis()) {
            accessToken = accessGrant.getRefreshToken();
            System.out.printf("accessToken is expired. refresh token = {}", accessToken);
 
        }
 
        Connection<Google> connection = googleConnectionFactory.createConnection(accessGrant);
        Google google = connection == null ? new GoogleTemplate(accessToken) : connection.getApi();
        System.out.println(connection);
 
        PlusOperations plusOperations = google.plusOperations();
        Person profile = plusOperations.getGoogleProfile();
        
        String UserUid = profile.getId();
        String UserName = profile.getDisplayName();
        
        session.setAttribute("user_uid", UserUid);
        session.setAttribute("UserName", UserName);
        
      
        /*UserDto1 dto = new UserDto1();
        dto.setUser_name(UserName);
        dto.setUser_uid(UserUid);
        dao.insertuser(dto);*/
        
        System.out.println("User Uid : " + profile.getId());
        System.out.println("User Name : " + profile.getDisplayName());
        System.out.println("User Email : " + profile.getAccountEmail());
        System.out.println("User Profile : " + profile.getImageUrl());
        System.out.println("User Birthday :" + profile.getBirthday());
        System.out.printf("accessToken is expired. refresh token = {}", accessToken);
        session.setAttribute("loginok", "yes");
        model.setViewName("redirect:main.do");
        
 
        
        return model;
 
    }
    
    @RequestMapping(value="/logout.do", method = { RequestMethod.GET, RequestMethod.POST })
    public String logout(HttpSession session){
    	
    	
    	String seaccessToken = (String)session.getAttribute("token");
    	System.out.println(seaccessToken);
    	
    	// Access Token 취소
        try {
            System.out.println("Closing Token....");
			String revokeUrl = "https://accounts.google.com/o/oauth2/revoke?token=" + seaccessToken + "";
            URL url = new URL(revokeUrl);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setDoOutput(true);
 
            BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
            String inputLine;
            StringBuffer response = new StringBuffer();
            while ((inputLine = in.readLine()) != null) {
                response.append(inputLine);
            }
            in.close();
        } catch (Exception e) {
 
            e.printStackTrace();
        }
    	session.removeAttribute("loginok");	
    	return "redirect:main.do";
    }
    
    
}
	
