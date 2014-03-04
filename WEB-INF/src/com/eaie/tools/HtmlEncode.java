package com.eaie.tools;

public class HtmlEncode {

	static private String Encode(int i){

	     if (i=='&') return "&amp;";

	     else if (i=='<') return "&lt;";

	     else if (i=='>') return "&gt;";

	     else if (i=='"') return "&quot;";

	     else return ""+(char)i;

	}

	     

	public static String htmlEncode(String st){

	     StringBuffer buf = new StringBuffer();

	     for (int i = 0;i<st.length();i++){

	         buf.append(Encode(st.charAt(i)));

	     }

	     return buf.toString();

	}
	
	public static String clearHtml(String buffer){	    
		buffer=buffer.replaceAll("</?[^>]+>","");   //剔出了<html>的标签 
		buffer=buffer.replace("&nbsp;",""); 
		buffer=buffer.replace("&quot;","\""); 
		buffer=buffer.replace("&gt;",">");
		buffer=buffer.replace("&lt;","<");
		buffer=buffer.replace("&amp;","&");
		buffer=buffer.replace(".",""); 
		buffer=buffer.replace("\"","‘");
		buffer=buffer.replace("'","‘");
		return buffer;
	}
	//	
	/**
	 * @param buffer
	 * @return　Html解码，将数据库中的值在Textaera中显示
	 */
	public static String inHtml(String buffer){
		
		if(buffer==null){
			
			return null;
		}else{
			
			buffer=buffer.replace("&gt;",">");
			buffer=buffer.replace("&lt;","<");
			buffer=buffer.replace("&amp;","&");	
			buffer=buffer.replace("<br>","\n");		
			return buffer;
		}
		
		
		
	}
	
	//	　
	/**
	 * @param buffer
	 * @return　将Textaera中的值Html编码，用以存入数据库
	 */
	public static String outHtml(String buffer){
		
		
		if(buffer==null){
			
			return null;
		}else{
			buffer=buffer.replace(">","&gt;");
			buffer=buffer.replace("<","&lt;");
			buffer=buffer.replace("&","&amp;");	
			buffer=buffer.replace("\n","<br>");		
			return buffer;
		}
		
	}

}
