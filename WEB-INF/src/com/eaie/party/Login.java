package com.eaie.party;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eaie.dbmanage.Commie;
import com.eaie.tools.MD5;
import com.eaie.tools.JavaScript;

public class Login extends HttpServlet {

	public Login() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=GBK");
		PrintWriter out = response.getWriter();
		MD5 trans =new MD5();
		String name = request.getParameter("username");
		String pw = request.getParameter("password");
		String pwMD5 = trans.getMD5ofStr(pw);
		try{
			String pwd = PartyImp.getPassword(name);
			if((pwd!=null) && (pwd.equals(pwMD5))){
				Commie commie = PartyImp.getCommie(name);
				HttpSession httpSession = request.getSession();
				httpSession.setAttribute("Commie", commie);
				forwardTo("/party/main/Commie.jsp",request,response);
			}else{
				out.print(JavaScript.alertandRedirect("对不起,您的学号不存在或者密码错误!", "../party/index.jsp"));
			}		
		}catch(Exception ex){
			ex.printStackTrace();
			out.print(JavaScript.alertandRedirect("对不起,您的学号不存在或者密码错误!", "../party/index.jsp"));
		}
		
	}
	
	private void forwardTo(String url,HttpServletRequest request,HttpServletResponse response){		
		try {
			RequestDispatcher dispatch = getServletContext().getRequestDispatcher(url);
			dispatch.forward(request,response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	public void init() throws ServletException {
		// Put your code here
	}

}
