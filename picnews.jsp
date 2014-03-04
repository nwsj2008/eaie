<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="com.eaie.admin.news.*"%>
<%@ page import="com.eaie.dbmanage.*"%>
<%@ page import="com.eaie.tools.*"%>
<%@ page import="java.util.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	String pics="";
	String links="";
	String texts="";

	List list = NewsImp.getPicNews(3);		
	Iterator it = list.iterator();
	while (it.hasNext()) {	
	
		News news = (News) it.next();	
		String[] newspic = news.getImageurl().split("\\|");
		if(newspic!=null){
			for(int i=0;i<newspic.length;i++){
				links +=news.getId().toString() + "|";
				texts +=news.getTitle()+ "|";
				pics += newspic[i] + "|";
			}
		}
			
	}		
	while(pics.endsWith("|")){
		pics = pics.substring(0,pics.length()-1);	
	}	
	pics = pics.replaceAll("\\|","|UploadFiles/uppic/");	
	pics = "UploadFiles/uppic/" + pics;
	
	links = links.substring(0,links.length()-1);
	links = links.replace("|","|ShowArticle.jsp?id=");
	links = "ShowArticle.jsp?id=" + links;
	texts = texts.substring(0,texts.length()-1);	
 %>
<script language="JavaScript">
<!--
	var focus_width=540
	var focus_height=280
	var text_height=20
	var swf_height = focus_height+text_height
	
	var pics='<%=pics%>'
	var links='<%=links%>'
	var texts='<%=texts%>'

	document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=3,0,0,0" width="'+ focus_width +'" height="'+ swf_height +'">');
	document.write('<param name="allowScriptAccess" value="sameDomain"><param name="movie" value="images/picnews.swf"><param name="quality" value="high"><param name="bgcolor" value="#CCCCCC">');
	document.write('<param name="menu" value="false"><param name=wmode value="opaque">');
	document.write('<param name="FlashVars" value="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'">');
	document.write('<embed src="images/picnews.swf" wmode="opaque" FlashVars="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'" menu="false" bgcolor="#ffffff" quality="high" width="'+ focus_width +'" height="'+ swf_height +'" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');	
	document.write('</object>');
//-->
</script>


