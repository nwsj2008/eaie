package com.eaie.tools;

public class Image {
	
	public static String getImageFile(String name, int size){
		String suffix = name.substring(name.lastIndexOf(".")+1,name.length());
		if (suffix.equalsIgnoreCase("doc"))
			return "<img src=images/filepic/doc.gif height="+size+">";
		else if (suffix.equalsIgnoreCase("xls"))
			return "<img src=images/filepic/xls.gif height="+size+">";
		else if (suffix.equalsIgnoreCase("pdf"))
			return "<img src=images/filepic/pdf.gif height="+size+">";
		else if (suffix.equalsIgnoreCase("txt"))
			return "<img src=images/filepic/txt.gif height="+size+">";
		else if (suffix.equalsIgnoreCase("jpg"))
			return "<img src=images/filepic/jpg.gif height="+size+">";
		else if (suffix.equalsIgnoreCase("mp3"))
			return "<img src=images/filepic/mp3.gif height="+size+">";
		else if (suffix.equalsIgnoreCase("rar"))
			return "<img src=images/filepic/rar.gif height="+size+">";
		else if (suffix.equalsIgnoreCase("zip"))
			return "<img src=images/filepic/zip.gif height="+size+">";
		else if (suffix.equalsIgnoreCase("ppt"))
			return "<img src=images/filepic/ppt.gif height="+size+">";
		else if (suffix.equalsIgnoreCase("gif"))
			return "<img src=images/filepic/gif.gif height="+size+">";
		else if (suffix.equalsIgnoreCase("pic"))
			return "<img src=images/filepic/pic.gif height="+size+">";
		else return "<img src=images/filepic/unknow.gif height="+size+">";
	}
	
	public static String getFileExt(String fileName){	
		int indexOfDot = fileName.indexOf('.');		
		return fileName.substring(indexOfDot+1);
	}	

}
