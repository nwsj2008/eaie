package com.eaie.tools;


public class JavaScript {
	
	/**���ɵ�����ʾ�Ի���JS����
	 * @param Ҫ��ʾ����Ϣ
	 * @return 
	 */
	public static String alert(String sMessage){
		
		StringBuffer bf = new StringBuffer();
		bf.append("<script> ");
		bf.append("alert('");
		bf.append(sMessage);
		bf.append("');");	
		bf.append("</script> ");
		return bf.toString();
	}
	
	/**������ʾ��Ϣ����תҳ���JS����
	 * @param sMessage Ҫ��ʾ����Ϣ
	 * @param sToPageUrl ��ת��ҳ��
	 * @return 
	 */
	public static String alertandRedirect(String sMessage,String sToPageUrl){
		
		StringBuffer bf = new StringBuffer();
		bf.append("<script> ");
		bf.append("alert('");
		bf.append(sMessage);
		bf.append("');");	
		bf.append("window.location.href='");
		bf.append(sToPageUrl);
		bf.append("';");
		bf.append("</script> ");
		return bf.toString();	
	}
	
	/**������ʾ��Ϣ���˺��JS����
	 * @param sMessage
	 * @return
	 */
	public static String alertandBack(String sMessage){
		
		StringBuffer bf = new StringBuffer();
		bf.append("<script> ");
		bf.append("alert('");
		bf.append(sMessage);
		bf.append("');");	
		bf.append("window.history.go(-1);");	
		bf.append("</script> ");
		return bf.toString();
		
		
	}

}
