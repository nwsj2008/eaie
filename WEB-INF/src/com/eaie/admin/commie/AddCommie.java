package com.eaie.admin.commie;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




import com.eaie.common.BasicDAO;
import com.eaie.dbmanage.Commie;
import com.eaie.tools.*;



public class AddCommie extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AddCommie() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName()
				+ ":" + request.getServerPort() + path + "/" + "/admin/commie/";
		String stuid = request.getParameter("stuid");
		String banji = request.getParameter("banji");
		String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		String pwdold = request.getParameter("pwd");
		MD5 trans =new MD5();
		String pwd=trans.getMD5ofStr(pwdold); //md5加密
		String branch = request.getParameter("branch");
		String postString = request.getParameter("post");
		int post = Integer.parseInt(postString);
		String addtime = request.getParameter("addtime");
		String sfzsString = request.getParameter("sfzs");
		Byte sfzs = IsNullOrEmpty(sfzsString)?null:Byte.parseByte(sfzsString);
		String rdsqsString = request.getParameter("rdsqs");
		Byte rdsqs = IsNullOrEmpty(rdsqsString)?null:Byte.parseByte(rdsqsString);
		String hdString = request.getParameter("hd");
		Byte hd = IsNullOrEmpty(hdString)?null:Byte.parseByte(hdString);
		String rdzysString = request.getParameter("rdzys");
		Byte rdzys = IsNullOrEmpty(rdsqsString)?null:Byte.parseByte(rdzysString);
		String zzString = request.getParameter("zz");
		Byte zz = IsNullOrEmpty(zzString)?null:Byte.parseByte(zzString);
		String dkjyzString = request.getParameter("dkjyz");
		Byte dkjyz = IsNullOrEmpty(dkjyzString)?null:Byte.parseByte(dkjyzString);
		String bnzjString = request.getParameter("bnzj");
		Byte bnzj = IsNullOrEmpty(bnzjString)?null:Byte.parseByte(bnzjString);
		String ybdykcbString = request.getParameter("ybdykcb");
		Byte ybdykcb = IsNullOrEmpty(ybdykcbString)?null:Byte.parseByte(ybdykcbString);
		String qnzjString = request.getParameter("qnzj");
		Byte qnzj = IsNullOrEmpty(qnzjString)?null:Byte.parseByte(qnzjString);
		String zzsqsString = request.getParameter("zzsqs");
		Byte zzsqs = IsNullOrEmpty(zzsqsString)?null:Byte.parseByte(zzsqsString);
		String sxhb = request.getParameter("sxhb");
		String beizhu = request.getParameter("beizhu");
		Commie commie = new Commie();
		response.setCharacterEncoding("GBK");//解决中文乱码问题
		if (IsNullOrEmpty(stuid)) {
		
			String message = JavaScript.alertandBack("请添加学生学号");
			response.getWriter().write(message);

		} else {
			
			List list=null;
			try {
				//查找已存的stuid
				list = BasicDAO.queryByHql("From Commie commie where commie.stuid='"+stuid+"'");
			} catch (Exception e1) {			
				e1.printStackTrace();
			}
			//判断是否有相同的stuid
			  if(list.size()>0){	
					String message = JavaScript.alertandBack("已有本学号记录，请不要重复添加");
					response.getWriter().write(message);
			  }
			  else {
				  commie.setStuid(stuid);
					commie.setBanji(banji);
					commie.setName(name);
					commie.setSex(sex);
					commie.setPwd(pwd);
					commie.setBranch(branch);
					commie.setPost(post);
					commie.setAddtime(addtime);
					commie.setSfzs(sfzs);
					commie.setRdsqs(rdsqs);
					commie.setHd(hd);
					commie.setRdzys(rdzys);
					commie.setZz(zz);
					commie.setDkjyz(dkjyz);
					commie.setBnzj(bnzj);
					commie.setYbdykcb(ybdykcb);
					commie.setQnzj(qnzj);
					commie.setZzsqs(zzsqs);
					commie.setSxhb(sxhb);
					commie.setBeizhu(beizhu);
					response.setCharacterEncoding("GBK");
					try {
						BasicDAO.save(commie);	
						String message = JavaScript.alertandRedirect("保存成功",basePath+"CommieList.jsp");
						response.getWriter().write(message);
						
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						String message = JavaScript.alertandBack("保存失败");
						response.getWriter().write(message);
					}				
				
			  }
			
			
			
			
			
		}

	}

	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}
	
	/*
	 * 判断字符串是否为null或""
	 */
	private boolean IsNullOrEmpty(String s){
		if(s == null){
			return true;
		}
		
		if(s.equals("")){
			return true;
		}
		return false;
	}
}
