package com.eaie.tools;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;


public class XMLImp implements IXMLImp{
	
private Document doc = null;
private String fileName;
	
	public XMLImp(){
		this.bulidDocument();	
	}
	
	public void bulidDocument(){
		SAXReader saxReader = new SAXReader();
		try{
			String url = XMLImp.class.getResource("/").toString();
			int num = url.indexOf("class");
			String filePath = url.substring(6,num);
			fileName = filePath + "conf.xml";
			File file = new File(fileName);
			doc = saxReader.read(file);
		}catch (DocumentException e)
		{
			e.printStackTrace();
		}	
	}
	
	public ParaValue getXMLElements(){
		ParaValue para = new ParaValue();
		String value[] = new String[5];
		int i = 0;
		try{		
			Element root = doc.getRootElement();
			List childs = root.elements("para");
			Iterator itr = childs.iterator();			
			while (itr.hasNext()) {
				Element child = (Element)itr.next();
				value[i++] = child.elementText("para_value");
			}	
			para.setNewsPageNum(Integer.parseInt(value[0]));
			para.setTeacherPageNum(Integer.parseInt(value[1]));
			para.setStudentPageNum(Integer.parseInt(value[2]));
			para.setVotePageNum(Integer.parseInt(value[3]));
			para.setComPageNum(Integer.parseInt(value[4]));
			return para;
		}catch (Exception ex)
		{
			ex.printStackTrace();
			return null;
		}	
	}
	
	public boolean setXMLElements(ParaValue para){
		String value[] = new String[5];
		value[0] = String.valueOf(para.getNewsPageNum());
		value[1] = String.valueOf(para.getTeacherPageNum());
		value[2] = String.valueOf(para.getStudentPageNum());
		value[3] = String.valueOf(para.getVotePageNum());
		value[4] = String.valueOf(para.getComPageNum());
		int i = 0;
		try{
			Element root = doc.getRootElement();
			List childs = root.elements("para");
			Iterator itr = childs.iterator();			
			while (itr.hasNext()) {
				Element child = (Element)itr.next();
				Element para_value = child.element("para_value");
				para_value.setText(value[i++]);
			}
			return save();
		}catch(Exception ex)
		{
			System.out.println("修改参数配置信息失败");
			ex.printStackTrace();
			return false;
		}
	}
	
	private boolean save(){
		try{
			OutputFormat outFmt =OutputFormat.createPrettyPrint();
		    outFmt.setEncoding("GBK");
		    outFmt.setIndent("    ");
		    XMLWriter xmlWriter = new XMLWriter(new FileWriter(new File(fileName)),outFmt);
		    xmlWriter.write(doc);
		    xmlWriter.close();
		    return true;
		}catch(IOException e)
		{
			e.printStackTrace();
			return false;
		}
	}
	
	

}
