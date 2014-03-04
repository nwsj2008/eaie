// JavaScript Document
function check(){
        var subject=document.getElementById("subject");
        var lecturer = document.getElementById("lecturer");
        var endtime = document.getElementById("endtime");
	    var givetime = document.getElementById("givetime");
		var givesite = document.getElementById("givesite");
      	
		if(isEmpty(subject)){
      		alert("请输入报告主题");
      		window.event.returnValue = false;
      	}else if(isEmpty(lecturer)){
      		alert("请输入报告人");
      		window.event.returnValue = false;
      	}else if(isEmpty(endtime)){
      		alert("请输入报告日期");
      		window.event.returnValue = false;
      	}else if(isEmpty(givetime)){
      		alert("请输入具体时间");
      		window.event.returnValue = false;
      	}else if(isEmpty(givesite)){
      		alert("请输入报告地点");
      		window.event.returnValue = false;
      	}else{
      		myform.submit();
      	}
      }
      
	  function isEmpty(obj){
      	if(obj.value.length==0){
      		return true;
      	}
      	else{
      		return false;
      	}
      }
      
       function Confirm(){                                                               //删除确认

                var i=0;
                var len = document.form2.elements.length;
                var Confirmed = false;
                for(i = 0;i<len;i++)
                { 
                   
                   if(document.form2.elements[i].type == "checkbox")
                   {
                      
                      if((document.form2.elements[i].id!="chkall")&&(document.form2.elements[i].checked == true))
                      {
                          Confirmed = true;
                      }
                   }
                }
                if(!Confirmed)
                {
                   alert("请选择删除项！"); 
                   window.event.returnValue = false;
                }
                else
                {
                   if(!(confirm("你确认要删除所选项吗？")))
                    {
                       window.event.returnValue = false;
                    }
                }
    }
      