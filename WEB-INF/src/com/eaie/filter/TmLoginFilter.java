package com.eaie.filter;
import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.eaie.tools.*;
public class TmLoginFilter implements Filter {
	public void destroy() {		

	}

	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest hreq = (HttpServletRequest)req;
		HttpServletResponse hres = (HttpServletResponse)res;
		
		HttpSession session = hreq.getSession();		
		hres.setCharacterEncoding("GBK");

		if(session.getAttribute("TMUSER")==null){	
		
			String checkpath = 	hreq.getScheme() + "://"
				+ hreq.getServerName() + ":" + hreq.getServerPort()
				+ hreq.getContextPath() ; 
			if(hreq.getServerPort()==80){
				
				checkpath = hreq.getScheme() + "://"
				+ hreq.getServerName() +  hreq.getContextPath() ;
				
			}
			//È¥µôµÇÂ¼Ò³ÃæºÍ±ØÒªÍ¼Æ¬µÄFilter
			
			String tmloginPage = checkpath + "/tmszsxtstudentnew/tmlogin.jsp";	
			String tmuserAdd = checkpath + "/tmszsxtstudentnew/tmusers/TmuserAdd.jsp";	
			String tmlogoutPage = checkpath + "/tmszsxtstudentnew/tmlogout.jsp";
			String tmuserSave = checkpath + "/tmszsxtstudentnew/tmusers/TmuserSave.jsp";	
			String tmImage =  checkpath + "/tmszsxtstudentnew/images" ;		
			
			String reqeustURL = hreq.getRequestURL().toString();			
			String imageUrl = reqeustURL.substring(0, reqeustURL.lastIndexOf("/"));	
			
			if(reqeustURL.equalsIgnoreCase(tmloginPage)||tmImage.equalsIgnoreCase(imageUrl)||reqeustURL.equalsIgnoreCase(tmlogoutPage)||reqeustURL.equalsIgnoreCase(tmuserAdd)||reqeustURL.equalsIgnoreCase(tmuserSave)){	
				chain.doFilter(req,res);		
			}else{					
				String sMessage = JavaScript.alert("ÄúÉÐÎ´µÇÂ¼»òµÇÂ¼³¬Ê±£¬ÇëÖØÐÂµÇÂ¼£¡");				
				hres.getWriter().println(sMessage);
			}
			
			
		}else{
			chain.doFilter(req,res);
			
		}		
		
		
		
	}

	public void init(FilterConfig config) throws ServletException {
	

	}

}
