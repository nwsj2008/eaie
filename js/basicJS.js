
    function isNull(id,paraName)
    {
        if(document.getElementById(id).value=="" || document.getElementById(id).value==null)
        {
            alert(paraName+"����Ϊ��!");
            document.getElementById(id).focus();
            document.getElementById(id).select();
            return false;
        }
        else return true;
    }  
    
    //textarea�ǿ���֤+������֤
    function textareaVaild(id,paraName,length)
    {
        if(document.getElementById(id).value==null)
        {
            alert(paraName+"����Ϊ��!");
            document.getElementById(id).focus();
            document.getElementById(id).select();
            return false;
        }else if(document.getElementById(id).value=="")
        {
        	alert(paraName+"����Ϊ��!");
            document.getElementById(id).focus();
            document.getElementById(id).select();
            return false;
        }else if(document.getElementById(id).value.length > length)
        {
            alert("�������"+paraName+"���ݹ���!");
            document.getElementById(id).focus();
            document.getElementById(id).focus();
            return false;
        }
        else return true;
    }   
    
    function isTooLong(id,length,paraName)
    {
        if(document.getElementById(id).value.length > length)
        {
            alert("�������"+paraName+"���ݹ���!");
            document.getElementById(id).focus();
            document.getElementById(id).focus();
            return false;
        }
        else return true;
    }
    
    function selAll()
    {
        var objs = document.getElementsByName("ele");
	    if (document.getElementById("checkAll").checked==true){   
           for(var i=0;i<objs.length;i++)
               objs[i].checked=true;
        }
        else
        {
           for(var i=0;i<objs.length;i++)
               objs[i].checked=false;
        }
    }
    
    function isEqual(fid,sid,paraName)
    {
    	var fvalue = document.getElementById(fid);
    	var svalue = document.getElementById(sid);
    	if(fvalue.value!=svalue.value){   
    	     		
    		alert(paraName);
    		svalue.value = '';
    		svalue.focus();    		
    		return false;    	
    	}
    	else
    	{
    		return true;
    	}
    }
    
    function checkBulk()
    {
    	for (i=0;i<document.getElementsByName("ele").length;i++)
        if (document.getElementsByName("ele")[i].checked)
        	return true;
        alert("��ѡ����Ҫ�����Ķ���")
        return false;
    }
    
    function validateDig(id,word)
    {  
    	var code = document.getElementById(id).value;
    	var parser = /^[0-9]+$/
    	if (!parser.test(code))
    	{
    		alert(word); 
    	    return false;
    	}
    	else return true;   
     }
     
     ////��֤�����Ƿ�������
     function validateNum(num)
     {
     	var code = num;
     	var parser = /^[0-9]+$/
     	if (!parser.test(code))
    	{
    	    return false;
    	}
    	else return true; 
     }
    
     //��֤Email��ַ
     function isEmail(id){
     
     	var email = document.getElementById(id);
     	var ExgEmail = /^(.+)@(.+)$/;
     	var flag = email.value.match(ExgEmail);
     	if(flag==null){
     		alert("Email��ַ���Ϸ�");
     		email.focus();
     		return false;
     	}else{
     		
     		return true;
     	}
     	
     	
     }
