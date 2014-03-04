<%@ page contentType="text/html; charset=GBK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"> 
<%
   String id=request.getParameter("id");
   %>
<HTML> 
<HEAD> 
<TITLE> New Document </TITLE> 
<META NAME="Generator" CONTENT="EditPlus"> 
<META NAME="Author" CONTENT=""> 
<META NAME="Keywords" CONTENT=""> 
<META NAME="Description" CONTENT=""> 
</HEAD> 

<BODY> 
<script language="javascript">
         function getSelect(){

/***************第一种方式********/
           var factor=document.getElementById('hi');
           var fa=factor.selectedIndex;
           var username= factor.options[fa].value;

/***************第二种方式********/
           var user=document.getElementById('hi').options[document.getElementById('hi').selectedIndex].text;
           alert(username+'==========='+user);
           
           document.select.submit;
     }
     </script>
 <form name="select" action="select.jsp?id=2">
    <select name="hi" onchange="getSelect();" id='hi'>
                <option value="01">一</option>
                <option value="02">二</option>
                <option value="03">三</option>
                <option value="04">四</option>
   </select>
   <%=id==null?"":id %>
</form>
<script language="javascript">

   </script>
   
   
   <script>

//获取下拉列表选中项的文本
function getSelectedText(name){
var obj=document.getElementById(name);
for(i=0;i<obj.length;i++){
   if(obj[i].selected==true){
    return obj[i].innerText;      //关键是通过option对象的innerText属性获取到选项文本
   }
}
}

//获取下拉列表选中项的值
function getSelectedValue(name){
var obj=document.getElementById(name);
var aa=obj.value;
return obj.value;      //如此简单，直接用其对象的value属性便可获取到
alert(aa);
}

</script>
<select id="myselect" onchange="getSelectedValue('myselect')">
<option value="fist">1</option>
<option value="second">2</option>
<option value="third">3</option>
</select>

<input type="button"   value="所选文本"   onclick="alert(getSelectedText('myselect'));" />
<input type="button"   value="所选值" onclick="alert( getSelectedValue('myselect'));" />

   
</BODY> 
</HTML> 