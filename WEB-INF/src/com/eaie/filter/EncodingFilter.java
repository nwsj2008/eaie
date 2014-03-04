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

public class EncodingFilter implements Filter {

	protected FilterConfig filterConfig;
	private String targetEncoding = "GBK";
	
	public void init(FilterConfig config) throws ServletException {
		this.filterConfig = config;
		targetEncoding = config.getInitParameter("encoding");
	}

	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest hreq = (HttpServletRequest)req;
		HttpServletResponse hres = (HttpServletResponse)res;
		hreq.setCharacterEncoding(targetEncoding);
		chain.doFilter(req,res);
	}
	public void destroy() {
		this.filterConfig = null;
	}

}
