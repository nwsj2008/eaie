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

/***************��һ�ַ�ʽ********/
           var factor=document.getElementById('hi');
           var fa=factor.selectedIndex;
           var username= factor.options[fa].value;

/***************�ڶ��ַ�ʽ********/
           var user=document.getElementById('hi').options[document.getElementById('hi').selectedIndex].text;
           alert(username+'==========='+user);
           
           document.select.submit;
     }
     </script>
 <form name="select" action="select.jsp?id=2">
    <select name="hi" onchange="getSelect();" id='hi'>
                <option value="01">һ</option>
                <option value="02">��</option>
                <option value="03">��</option>
                <option value="04">��</option>
   </select>
   <%=id==null?"":id %>
</form>
<script language="javascript">

   </script>
   
   
   <script>

//��ȡ�����б�ѡ������ı�
function getSelectedText(name){
var obj=document.getElementById(name);
for(i=0;i<obj.length;i++){
   if(obj[i].selected==true){
    return obj[i].innerText;      //�ؼ���ͨ��option�����innerText���Ի�ȡ��ѡ���ı�
   }
}
}

//��ȡ�����б�ѡ�����ֵ
function getSelectedValue(name){
var obj=document.getElementById(name);
var aa=obj.value;
return obj.value;      //��˼򵥣�ֱ����������value���Ա�ɻ�ȡ��
alert(aa);
}

</script>
<select id="myselect" onchange="getSelectedValue('myselect')">
<option value="fist">1</option>
<option value="second">2</option>
<option value="third">3</option>
</select>

<input type="button"   value="��ѡ�ı�"   onclick="alert(getSelectedText('myselect'));" />
<input type="button"   value="��ѡֵ" onclick="alert( getSelectedValue('myselect'));" />

   
</BODY> 
</HTML> 