// JavaScript Document
function check(){
        var subject=document.getElementById("subject");
        var lecturer = document.getElementById("lecturer");
        var endtime = document.getElementById("endtime");
	    var givetime = document.getElementById("givetime");
		var givesite = document.getElementById("givesite");
      	
		if(isEmpty(subject)){
      		alert("�����뱨������");
      		window.event.returnValue = false;
      	}else if(isEmpty(lecturer)){
      		alert("�����뱨����");
      		window.event.returnValue = false;
      	}else if(isEmpty(endtime)){
      		alert("�����뱨������");
      		window.event.returnValue = false;
      	}else if(isEmpty(givetime)){
      		alert("���������ʱ��");
      		window.event.returnValue = false;
      	}else if(isEmpty(givesite)){
      		alert("�����뱨��ص�");
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
      
       function Confirm(){                                                               //ɾ��ȷ��

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
                   alert("��ѡ��ɾ���"); 
                   window.event.returnValue = false;
                }
                else
                {
                   if(!(confirm("��ȷ��Ҫɾ����ѡ����")))
                    {
                       window.event.returnValue = false;
                    }
                }
    }
      