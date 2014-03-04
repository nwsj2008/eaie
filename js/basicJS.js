
    function isNull(id,paraName)
    {
        if(document.getElementById(id).value=="" || document.getElementById(id).value==null)
        {
            alert(paraName+"不能为空!");
            document.getElementById(id).focus();
            document.getElementById(id).select();
            return false;
        }
        else return true;
    }  
    
    //textarea非空验证+长度验证
    function textareaVaild(id,paraName,length)
    {
        if(document.getElementById(id).value==null)
        {
            alert(paraName+"不能为空!");
            document.getElementById(id).focus();
            document.getElementById(id).select();
            return false;
        }else if(document.getElementById(id).value=="")
        {
        	alert(paraName+"不能为空!");
            document.getElementById(id).focus();
            document.getElementById(id).select();
            return false;
        }else if(document.getElementById(id).value.length > length)
        {
            alert("您输入的"+paraName+"内容过长!");
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
            alert("您输入的"+paraName+"内容过长!");
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
        alert("请选择需要操作的对象！")
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
     
     ////验证输入是否是数字
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
    
     //验证Email地址
     function isEmail(id){
     
     	var email = document.getElementById(id);
     	var ExgEmail = /^(.+)@(.+)$/;
     	var flag = email.value.match(ExgEmail);
     	if(flag==null){
     		alert("Email地址不合法");
     		email.focus();
     		return false;
     	}else{
     		
     		return true;
     	}
     	
     	
     }
