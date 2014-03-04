package com.eaie.search;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

import com.eaie.search.PageBean;
import com.eaie.common.BasicDAO;
import com.eaie.common.HibernateUtil;
import com.eaie.dbmanage.News;

public class Search {
	
	private String hqlFinalNews;
	private String hqlCountNews;
	private String hqlCountFile;
	private String hqlFinalFile;
	private String hqlFinalSubject;
	private String hqlFinalDoc;
	
	private String words[];
	PageBean page = new PageBean();
	
	private int countNum = 0;
	private int pageNum = 1;
	private long begin,end;
	
	private List doc;

	
	private String[] getSplitWords(String keyWord){
		keyWord = keyWord.replace(" ","&");
		keyWord = keyWord.replace(",", "&");
		keyWord = keyWord.replace(";", "&");
		keyWord = keyWord.replace("，", "&");
		keyWord = keyWord.replace("；", "&");
		keyWord = keyWord.replace("|", "&");
		keyWord = keyWord.replace("!", "");
		keyWord = keyWord.replace("#", "&");
		keyWord = keyWord.replace("$", "&");
		keyWord = keyWord.replace("%", "&");
		keyWord = keyWord.replace("^", "");
		keyWord = keyWord.replace("*", "&");
//		String finalWords = URLEncoder.encode(keyWord);
//		System.out.println(finalWords);
		words = keyWord.split("\\&+");
		return words;
	}
	
	public String getKeyWord(String keyWord){
		keyWord = keyWord.replace(",", " ");
		keyWord = keyWord.replace(";", " ");
		keyWord = keyWord.replace("，", " ");
		keyWord = keyWord.replace("；", " ");
		keyWord = keyWord.replace("|", " ");
		keyWord = keyWord.replace("!", "");
		keyWord = keyWord.replace("#", " ");
		keyWord = keyWord.replace("$", " ");
		keyWord = keyWord.replace("%", " ");
		keyWord = keyWord.replace("^", "");
		keyWord = keyWord.replace("*", " ");
		return keyWord;
	}
	
	private void setNewsHql(String words[]){		
		String hqlSubject;
		String hqlNews;
		String hqlDoc;
		if (words.length==1){
			hqlNews = "news.title like '%"+words[0]+"%' or news.content like '%"+words[0]+"%'";		
		    hqlSubject = "lecture.subject like '%"+words[0]+"%'";
		    hqlDoc = "news.filename like'%"+words[0]+"%'";
//			hqlTitle = "news.title like '%"+words[0]+"%'";
//		    hqlContent = "news.content like '%"+words[0]+"%'";	    
		}
		else {
			hqlNews = "(news.title like '%"+words[0]+"%' or news.content like '%"+words[0]+"%')";
			hqlSubject = "(lecture.subject like '%"+words[0]+"%')";
			hqlDoc = "(news.filename like '%"+words[0]+"%')";
			for (int i=1; i<words.length; i++){
				hqlNews = hqlNews+" and (news.title like '%"+words[i]+"%' or news.content like '%"+words[i]+"%')";	
				hqlSubject = hqlSubject+" and (lecture.subject like '%"+words[i]+"%')";
				hqlDoc = hqlDoc+" and (news.filename like '%"+words[i]+"%')";
			}		
		}
		hqlFinalNews = "from News as news where "+hqlNews+" order by news.hits desc";
		hqlCountNews = " select count(*) from News as news where "+hqlNews;
		hqlFinalSubject = "from Lecture as lecture where "+hqlSubject+" order by lecture.hits desc";
		hqlFinalDoc = "select news.id,news.filename from News as news where "+hqlDoc+" order by news.hits desc";
	}
	
	private void setFileHql(String words[]){
		String hqlFile;
		if (words.length==1){
			hqlFile = "file.filename like '%"+words[0]+"%'";
		}else{
			hqlFile = "(file.filename like '%"+words[0]+"%')";
			for (int i=1; i<words.length; i++){
				hqlFile = hqlFile+" and (file.filename like '%"+words[i]+"%')";	
			}
		}
		hqlFinalFile = "from Upfile as file where "+hqlFile+" order by file.downnum desc";
		hqlCountFile = " select count(*) from Upfile as file where "+hqlFile;
	}
		
	public void setNums(String keyWord){
		
		String keyWords[] = this.getSplitWords(keyWord);
		this.setNewsHql(keyWords);
		begin = System.currentTimeMillis();
		try{
			countNum = BasicDAO.getRowsNum(hqlCountNews);
			page.setMaxRowCount(countNum);
			pageNum = page.countMaxPage();	
		}catch(Exception e){
			e.printStackTrace();
		}
			
	}
	
	public List getAllNewsList(String keyWord, int curPage){
		String keyWords[] = this.getSplitWords(keyWord);
		this.setNewsHql(keyWords);
		try {
			begin = System.currentTimeMillis();
			Session session = HibernateUtil.currentSession();
			
			if(curPage==1){
				Query qDoc = session.createQuery(hqlFinalDoc);
				doc = qDoc.list();
			}
			Query q = session.createQuery(hqlCountNews);
			Query query = session.createQuery(hqlFinalNews);
		    countNum = Integer.parseInt(q.list().get(0).toString());
			page.setMaxRowCount(countNum);
			pageNum = page.countMaxPage();
			if (curPage != pageNum){			    
	            query.setFirstResult((curPage-1)*page.rowsPerPage);
			    query.setMaxResults(page.rowsPerPage);
			    List results = query.list();
			    return results;	
			}
			else{
		    	query.setFirstResult((curPage-1)*page.rowsPerPage);
		    	query.setMaxResults(countNum-(curPage-1)*page.rowsPerPage);
			    List results = query.list();
			    return results;
			}
		}
		catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
		finally{
			end = System.currentTimeMillis();
		}
		
	}
	
	public List getAllFileList(String keyWord, int curPage){
		String keyWords[] = this.getSplitWords(keyWord);
		this.setFileHql(keyWords);
		try {
			begin = System.currentTimeMillis();
			Session session = HibernateUtil.currentSession();
			Query q = session.createQuery(hqlCountFile);
			Query query = session.createQuery(hqlFinalFile);
		    countNum = Integer.parseInt(q.list().get(0).toString());
			page.setMaxRowCount(countNum);
			pageNum = page.countMaxPage();
			if (curPage != pageNum){			    
	            query.setFirstResult((curPage-1)*page.rowsPerPage);
			    query.setMaxResults(page.rowsPerPage);
			    List results = query.list();
			    return results;	
			}
			else{
		    	query.setFirstResult((curPage-1)*page.rowsPerPage);
		    	query.setMaxResults(countNum-(curPage-1)*page.rowsPerPage);
			    List results = query.list();
			    return results;
			}
		}
		catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
		finally{
			end = System.currentTimeMillis();
		}
		
	}
	
	public List getAllUserList(String keyWord, int curPage){
		String key = keyWord.trim();
		String hqlUser = "from News as news where news.teacher='"+key+"' order by news.hits desc";
		String hqlCountUser = "select count(*) from News as news where news.teacher='"+key+"'";
		try {
			begin = System.currentTimeMillis();
			Session session = HibernateUtil.currentSession();
			Query q = session.createQuery(hqlCountUser);
			Query query = session.createQuery(hqlUser);
		    countNum = Integer.parseInt(q.list().get(0).toString());
			page.setMaxRowCount(countNum);
			pageNum = page.countMaxPage();
			if (curPage != pageNum){			    
	            query.setFirstResult((curPage-1)*page.rowsPerPage);
			    query.setMaxResults(page.rowsPerPage);
			    List results = query.list();
			    return results;	
			}
			else{
		    	query.setFirstResult((curPage-1)*page.rowsPerPage);
		    	query.setMaxResults(countNum-(curPage-1)*page.rowsPerPage);
			    List results = query.list();
			    return results;
			}
		}
		catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
		finally{
			end = System.currentTimeMillis();
		}
		
	}
	
	public int getPageNum(){
		return this.pageNum;
	}
	
	public int getRowsNum(){
		return this.countNum;
	}
	
	public String getRunTime(){
		if(end-begin>=1000){
			String tem1 = String.valueOf(end-begin);
			String tem2 = tem1.substring(tem1.length()-3, tem1.length());
			String tem3 = tem1.substring(0,tem1.length()-3);
			return tem3+"."+tem2;
		}
		else if (end-begin>=100){
			String tem1 = String.valueOf(end-begin);
			return "0."+tem1;
		}
		else if(end-begin>=10){
			String tem1 = String.valueOf(end-begin);
			return "0.0"+tem1;
		}else {
			String tem1 = String.valueOf(end-begin);
			return "0.00"+tem1;
		}
	}
	
	public String getKeyTitle(String title){
		for(int i=0; i<words.length; i++)
			title = title.replace(words[i], "<font color=red>"+words[i]+"</font>");
		return title;
	}
	
	public String getUserContent(News news){
		String content = null;	
		String buffer = news.getContent();
		if ((buffer!=null) && (!buffer.equals(""))){
			try{
				buffer = this.clearHtml(buffer);
				int endIndex = (buffer.length()>150?150:buffer.length());
				content = buffer.substring(0, endIndex).toString()+"...";
			}catch(Exception e){
				e.printStackTrace();
			}
		}
        return content;
	}
	
	public String getKeyContent(News news){
		String content = null;
		try{
			content = news.getContent();
			if ((content!=null) && (!content.equals(""))){
				content = this.clearHtml(content);
				if (words.length==1){
					int index1 = content.indexOf(words[0]);
					if (index1!=-1){
						int beginIndex = index1-150<0?0:index1-150;
						int endIndex = content.length()<index1+150?content.length():index1+150;
						content = content.substring(beginIndex, endIndex).toString();
						content = content.replace(words[0], "<font color=red>"+words[0]+"</font>");
						content = content+"...";
					}
					else{
						int endIndex = content.length()<index1+300?content.length():index1+300;
						content = content.substring(0, endIndex).toString();
						content = content+"...";
					}
				}else{
					int i=0; 
					int j=0;
					int index1 = -1;
					int index2 = -1;
					String keys[] = new String[2];
					while((i<words.length) && (j<2)){
						if (content.indexOf(words[i])!=-1){
							keys[j] = words[i];
							j++;
						}
						i++;
					}
					if (keys[0]!=null)
						index1 = content.indexOf(keys[0]);
					if (keys[1]!=null)
						index2 = content.indexOf(keys[1]);
					if (index2!=-1){
						if (Math.abs(index1-index2)<=120){
							if (index1 < index2){
								int beginIndex = index1-120<0?0:index1-120;
								int endIndex = content.length()<index2+120?content.length():index2+120;
								content = content.substring(beginIndex, endIndex);
								for (int num=0; num<words.length; num++)
									content = content.replace(words[num], "<font color=red>"+words[num]+"</font>");
								content = content+"...";
							}
							else{
								int beginIndex = index2-100<0?0:index2-100;
								int endIndex = content.length()<index1+100?content.length():index1+100;
								content = content.substring(beginIndex, endIndex);
								for (int num=0; num<words.length; num++)
									content = content.replace(words[num], "<font color=red>"+words[num]+"</font>");
								content = content+"...";
							}
						}
						else{
							String content1,content2;
							int beginIndex1 = index1-60<0?0:index1-60;
							int endIndex1 = content.length()<index1+60?content.length():index1+60;
							content1 = content.substring(beginIndex1, endIndex1);
							for (int num=0; num<words.length; num++)
								content1 = content1.replace(words[num], "<font color=red>"+words[num]+"</font>");
							content1 = content1+"...";
							int beginIndex2 = index2-60<0?0:index2-60;
							int endIndex2 = content.length()<index2+60?content.length():index2+60;
							content2 = content.substring(beginIndex2, endIndex2);
							for (int num=0; num<words.length; num++)
								content2 = content2.replace(words[num], "<font color=red>"+words[num]+"</font>");
							content2 = content2+"...";
							if (index1 < index2){			
								content = content1 + content2;
							}
							else{
								content = content2 + content1;
							}
						}
					}else if(index1!=-1){
						int beginIndex = index1-150<0?0:index1-150;
						int endIndex = content.length()<index1+150?content.length():index1+150;
						content = content.substring(beginIndex, endIndex);
						content = content.replace(keys[0], "<font color=red>"+keys[0]+"</font>");
						content = content+"...";
					}
					else{
						int endIndex = content.length()<300?content.length():300;
						content = content.substring(0, endIndex);
						content = content+"...";
					}
				
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			return content;
		}
	}
	
	public String clearHtmlCode(String htmlCode)
    {
            String newString = null;
            htmlCode = htmlCode.replaceAll("\t" , "").replaceAll("\n" , "").replaceAll(" " , "");
            System.out.println(htmlCode);
            htmlCode = htmlCode.replaceAll("<script(.[^(</script>)]*)</script>" , "");
            System.out.println(htmlCode);
            htmlCode = htmlCode.replaceAll("<(.[^>]*)>" , "");
            System.out.println(htmlCode);
            /*
            String regEx = "<(.[^>]*)>(.[^>]*)<(.[^>]*)>";
            Pattern p = Pattern.compile(regEx , Pattern.CASE_INSENSITIVE);
            Matcher m = p.matcher(htmlCode);
            while (m.find())
            {
                    System.out.println(m.group(2));
            }
            */
            return newString;
    }
	
	public static String clearHtml(String buffer){
	    
			buffer=buffer.replaceAll("</?[^>]+>","");   //剔出了<html>的标签 
			buffer=buffer.replace("&nbsp;",""); 
			buffer=buffer.replace(".",""); 
			buffer=buffer.replace("\"","‘");
			buffer=buffer.replace("'","‘");
	return buffer;
	}
	
	public List getDocList(){
		return doc;
	}
	
	public int getDocListSize(){
		return doc.size();
	}
	
	public String getImage(String name){
		String suffix = name.substring(name.lastIndexOf(".")+1,name.length());
		if (suffix.equalsIgnoreCase("doc"))
			return "<img src=images/filepic/doc.gif height=15>";
		else if (suffix.equalsIgnoreCase("xls"))
			return "<img src=images/filepic/xls.gif height=15>";
		else if (suffix.equalsIgnoreCase("pdf"))
			return "<img src=images/filepic/pdf.gif height=15>";
		else if (suffix.equalsIgnoreCase("txt"))
			return "<img src=images/filepic/txt.gif height=15>";
		else if (suffix.equalsIgnoreCase("jpg"))
			return "<img src=images/filepic/jpg.gif height=15>";
		else if (suffix.equalsIgnoreCase("mp3"))
			return "<img src=images/filepic/mp3.gif height=15>";
		else if (suffix.equalsIgnoreCase("rar"))
			return "<img src=images/filepic/rar.gif height=15>";
		else if (suffix.equalsIgnoreCase("zip"))
			return "<img src=images/filepic/zip.gif height=15>";
		else if (suffix.equalsIgnoreCase("ppt"))
			return "<img src=images/filepic/ppt.gif height=15>";
		else if (suffix.equalsIgnoreCase("gif"))
			return "<img src=images/filepic/gif.gif height=15>";
		else if (suffix.equalsIgnoreCase("pic"))
			return "<img src=images/filepic/pic.gif height=15>";
		else return "<img src=images/filepic/unknow.gif height=15>";
	}
	
	public String getDocName(String name){
		String prefix = name.substring(0,name.indexOf(".")); 
		for (int i=0; i<words.length; i++)
			prefix = prefix.replace(words[i], "<font color=red>"+words[i]+"</font>");
		return prefix;
	}
	
	public String getImageFile(String name){
		String suffix = name.substring(name.lastIndexOf(".")+1,name.length());
		if (suffix.equalsIgnoreCase("doc"))
			return "<img src=images/filepic/doc.gif height=20>";
		else if (suffix.equalsIgnoreCase("xls"))
			return "<img src=images/filepic/xls.gif height=20>";
		else if (suffix.equalsIgnoreCase("pdf"))
			return "<img src=images/filepic/pdf.gif height=20>";
		else if (suffix.equalsIgnoreCase("txt"))
			return "<img src=images/filepic/txt.gif height=20>";
		else if (suffix.equalsIgnoreCase("jpg"))
			return "<img src=images/filepic/jpg.gif height=20>";
		else if (suffix.equalsIgnoreCase("mp3"))
			return "<img src=images/filepic/mp3.gif height=20>";
		else if (suffix.equalsIgnoreCase("rar"))
			return "<img src=images/filepic/rar.gif height=20>";
		else if (suffix.equalsIgnoreCase("zip"))
			return "<img src=images/filepic/zip.gif height=20>";
		else if (suffix.equalsIgnoreCase("ppt"))
			return "<img src=images/filepic/ppt.gif height=20>";
		else if (suffix.equalsIgnoreCase("gif"))
			return "<img src=images/filepic/gif.gif height=20>";
		else if (suffix.equalsIgnoreCase("pic"))
			return "<img src=images/filepic/pic.gif height=20>";
		else return "<img src=images/filepic/unknow.gif height=20>";
	}
			
		    

}
