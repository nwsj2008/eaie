package com.eaie.system;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Enumeration;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletException;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSessionActivationListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import com.eaie.system.Operation;

public class SessionListener implements HttpSessionActivationListener,
		HttpSessionListener, ServletContext, ServletRequestListener {
	
	ServletContext context;
	int onLineUserNum = 0;
	int visitNum = 0;
	HttpServletRequest request;

	public void sessionDidActivate(HttpSessionEvent session) {
		log("seesionDidActive("+session.getSession().getId()+")");
	}

	public void sessionWillPassivate(HttpSessionEvent session) {
		log("seesionWillPassivate("+session.getSession().getId()+")");

	}

	public void sessionCreated(HttpSessionEvent event) {
		onLineUserNum++;
		visitNum ++;
		Operation.setVisitNum();
		String ip = request.getRemoteAddr();
		log("sessionCreated-->IP:"+ip);	
		context.setAttribute("onLineUserNum", onLineUserNum);
		context.setAttribute("visitNum", visitNum);
	}

	public void sessionDestroyed(HttpSessionEvent event) {
		if (onLineUserNum>0){
			onLineUserNum--;	
		}
		String ip = request.getRemoteAddr();
		log("sessionDestroyed-->IP:"+ip);
		context.setAttribute("onLineUserNum", new Integer(onLineUserNum));

	}
	
	public void contextDestroyed(ServletContextEvent sce){
		log("contextDestroyed-->ServletContext is destroyed");
		this.context = null;
	}
	
	public void contextInitialized(ServletContextEvent sce){
		this.context = sce.getServletContext();
		log("contextDestroyed-->ServletContext is initialized");
	}
	
	public int getUserOnline(){
		return this.onLineUserNum;
	}

	public void log(String message) {
		PrintWriter out = null;
		try{
			out = new PrintWriter(new FileOutputStream("c:\\eaieLogger.txt",true));
			out.println(new java.util.Date().toLocaleString()+"::From SessionListener:"+message);
			out.println("Totle visit number:"+this.visitNum+" and current online num: "+onLineUserNum);
			out.println("=================================");
			out.close();
		}catch(Exception e){
			e.printStackTrace();
			out.close();
		}

	}
	
	public void requestInitialized(ServletRequestEvent event) {
		request = (HttpServletRequest)event.getServletRequest(); 
	}
	
	
	
	
	

	public Object getAttribute(String arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	public Enumeration getAttributeNames() {
		// TODO Auto-generated method stub
		return null;
	}

	public ServletContext getContext(String con) {
		// TODO Auto-generated method stub
		return null;
	}

	public String getInitParameter(String arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	public Enumeration getInitParameterNames() {
		// TODO Auto-generated method stub
		return null;
	}

	public int getMajorVersion() {
		// TODO Auto-generated method stub
		return 0;
	}

	public String getMimeType(String arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	public int getMinorVersion() {
		// TODO Auto-generated method stub
		return 0;
	}

	public RequestDispatcher getNamedDispatcher(String arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	public String getRealPath(String arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	public RequestDispatcher getRequestDispatcher(String arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	public URL getResource(String arg0) throws MalformedURLException {
		// TODO Auto-generated method stub
		return null;
	}

	public InputStream getResourceAsStream(String arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	public Set getResourcePaths(String arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	public String getServerInfo() {
		// TODO Auto-generated method stub
		return null;
	}

	public Servlet getServlet(String arg0) throws ServletException {
		// TODO Auto-generated method stub
		return null;
	}

	public String getServletContextName() {
		// TODO Auto-generated method stub
		return null;
	}

	public Enumeration getServletNames() {
		// TODO Auto-generated method stub
		return null;
	}

	public Enumeration getServlets() {
		// TODO Auto-generated method stub
		return null;
	}


	public void log(Exception arg0, String arg1) {
		// TODO Auto-generated method stub

	}

	public void log(String arg0, Throwable arg1) {
		// TODO Auto-generated method stub

	}

	public void removeAttribute(String arg0) {
		// TODO Auto-generated method stub

	}

	public void setAttribute(String arg0, Object arg1) {
		// TODO Auto-generated method stub

	}

	public void requestDestroyed(ServletRequestEvent arg0) {
		// TODO Auto-generated method stub
		
	}





}
