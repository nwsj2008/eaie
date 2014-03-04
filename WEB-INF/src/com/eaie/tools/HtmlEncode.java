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
		buffer=buffer.replaceAll("</?[^>]+>","");   //�޳���<html>�ı�ǩ 
		buffer=buffer.replace("&nbsp;",""); 
		buffer=buffer.replace("&quot;","\""); 
		buffer=buffer.replace("&gt;",">");
		buffer=buffer.replace("&lt;","<");
		buffer=buffer.replace("&amp;","&");
		buffer=buffer.replace(".",""); 
		buffer=buffer.replace("\"","��");
		buffer=buffer.replace("'","��");
		return buffer;
	}
	//	
	/**
	 * @param buffer
	 * @return��Html���룬�����ݿ��е�ֵ��Textaera����ʾ
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
	
	//	��
	/**
	 * @param buffer
	 * @return����Textaera�е�ֵHtml���룬���Դ������ݿ�
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
