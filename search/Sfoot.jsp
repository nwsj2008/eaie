<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>

<form name="pageForm" method="post" action="Search.jsp">
  		<table style="margin-left:12px">
  		<% if (search.getPageNum()==1){ %>
  		<tr>
  			<td><div><font size="2" color="#000000">1</font></div></td>
  		</tr>
  		<%} else {%>
  		<tr>
  			<td>
  			<%if (curPage==1){
  			  	out.print("<font size=2 color=#000000>上一页</font>&nbsp;&nbsp;"); }
  			  else{
  			    out.print("<a href='"+root+"?keyWord="+keyWord+"&curPage="+(curPage-1)+"'><font size=2 color=#0000CD>上一页</font></a>&nbsp;&nbsp;");}		
  			  if (search.getPageNum()<=10){
  			  	for (int i=1; i<=search.getPageNum(); i++){
  			  		if(curPage==i){
  			  			out.print("<font size=2 color=#000000>"+i+"</font>&nbsp;&nbsp;");}
  			  		else{
  			  			out.print("<a href='"+root+"?keyWord="+keyWord+"&curPage="+i+"'><font size=2 color=#0000CD>["+i+"]</font></a>&nbsp;&nbsp;");}
  			  	}
  			  }else {
  			   	int num10 = search.getPageNum()/10+1;
  			   	for (int j=0; j<=num10; j++){
  			   	if ((curPage>j*10)&&(curPage<=j*10+10)){
  			   		if (num10 - j > 1){
  			   		    if(j*10>0){
  			   		    	int temp = j*10;
  			  		    	out.print("<a href='"+root+"?keyWord="+keyWord+"&curPage="+temp+"'><font size=2 color=#0000CD>["+temp+"]</font></a>&nbsp;&nbsp;");
  			   		    }
  			   			for (int k=1; k<=10; k++){
  			   			    int tem = j*10+k;
  			   				if(curPage==j*10+k){
  			  					out.print("<font size=2 color=#000000>"+tem+"</font>&nbsp;&nbsp;");}
  			  				else{
  			  					out.print("<a href='"+root+"?keyWord="+keyWord+"&curPage="+tem+"'><font size=2 color=#0000CD>["+tem+"]</font></a>&nbsp;&nbsp;");}
  			  		    }
  			  		    if(search.getPageNum()>=(j*10+11)){
  			  		     	int temp = j*10+11;
  			  		    	out.print("<a href='"+root+"?keyWord="+keyWord+"&curPage="+temp+"'><font size=2 color=#0000CD>["+temp+"]</font></a>&nbsp;&nbsp;");
  			  		    }

  			  		    break;
  			  		}else{ 
  			  		 	for(int k=j*10; k<=search.getPageNum(); k++){
  			  		 		if(curPage==k){
  			  					out.print("<font size=2 color=#000000>"+k+"</font>&nbsp;&nbsp;");}
  			  				else{
  			  					out.print("<a href='"+root+"?keyWord="+keyWord+"&curPage="+k+"'><font size=2 color=#0000CD>["+k+"]</font></a>&nbsp;&nbsp;");}
  			  		 	}
  			  		 	break;
  			  		}		
  			   	}
  			  }
  			  }
  		      if (curPage==search.getPageNum()){
  			  	out.print("<font size=2 color=#000000>下一页</font>&nbsp;&nbsp;"); }
  			  else{
  			    out.print("<a href='"+root+"?keyWord="+keyWord+"&curPage="+(curPage+1)+"'><font size=2 color=#0000CD>下一页</font></a>&nbsp;&nbsp;");}	
  			%>
  			<font size=2 color=#000000>共有<font color=red><%=search.getPageNum()%></font>页</font>
  			</td>
  		</tr>

  		
  		<%} %>
  		</table>
  		</form>
