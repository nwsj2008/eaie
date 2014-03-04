package com.eaie.tools;


public class JavaScript {
	
	/**生成弹出提示对话框JS代码
	 * @param 要提示的信息
	 * @return 
	 */
	public static String alert(String sMessage){
		
		StringBuffer bf = new StringBuffer();
		bf.append("<script> ");
		bf.append("alert('");
		bf.append(sMessage);
		bf.append("');");	
		bf.append("</script> ");
		return bf.toString();
	}
	
	/**生成提示信息并跳转页面的JS代码
	 * @param sMessage 要提示的信息
	 * @param sToPageUrl 跳转至页面
	 * @return 
	 */
	public static String alertandRedirect(String sMessage,String sToPageUrl){
		
		StringBuffer bf = new StringBuffer();
		bf.append("<script> ");
		bf.append("alert('");
		bf.append(sMessage);
		bf.append("');");	
		bf.append("window.location.href='");
		bf.append(sToPageUrl);
		bf.append("';");
		bf.append("</script> ");
		return bf.toString();	
	}
	
	/**生成提示信息并退后的JS代码
	 * @param sMessage
	 * @return
	 */
	public static String alertandBack(String sMessage){
		
		StringBuffer bf = new StringBuffer();
		bf.append("<script> ");
		bf.append("alert('");
		bf.append(sMessage);
		bf.append("');");	
		bf.append("window.history.go(-1);");	
		bf.append("</script> ");
		return bf.toString();
		
		
	}

}
