package com.eaie.common;

import java.util.List;

import com.eaie.tools.IXMLImp;
import com.eaie.tools.ParaValue;
import com.eaie.tools.XMLImp;

public class PageBean {
	
	private ParaValue para;
	public int curPage;
	public int maxRowCount;
    public int maxPage;
	
	public int newsRowsPerPage;
	public int teaRowsPerPage;
	public int stuRowsPerPage;
	public int voteRowsPerPage;
	public int comRowsPerPage;
	
	public List data;
	
	public PageBean(){
		IXMLImp imp = new XMLImp();
		para = imp.getXMLElements();		
		this.setValue();
	}
	
	private void setValue(){
		newsRowsPerPage = para.getNewsPageNum();
		teaRowsPerPage = para.getTeacherPageNum();
		stuRowsPerPage = para.getStudentPageNum();
		voteRowsPerPage = para.getVotePageNum();
		comRowsPerPage = para.getComPageNum();
	}
	
	public int countNewsMaxPage(){
		if(this.maxRowCount % this.newsRowsPerPage ==0 )
			this.maxPage = this.maxRowCount/this.newsRowsPerPage;
		else
			this.maxPage = this.maxRowCount/this.newsRowsPerPage + 1;
		return maxPage;
	}
	
	public int countTeaMaxPage(){
		if(this.maxRowCount % this.teaRowsPerPage ==0 )
			this.maxPage = this.maxRowCount/this.teaRowsPerPage;
		else
			this.maxPage = this.maxRowCount/this.teaRowsPerPage + 1;			
		return maxPage;
	}
	
	public int countStuMaxPage(){
		if(this.maxRowCount % this.stuRowsPerPage ==0 )
			this.maxPage = this.maxRowCount/this.stuRowsPerPage;
		else
			this.maxPage = this.maxRowCount/this.stuRowsPerPage + 1;
		return maxPage;
	}
	
	public int countVoteMaxPage(){
		if(this.maxRowCount % this.voteRowsPerPage ==0 )
			this.maxPage = this.maxRowCount/this.voteRowsPerPage;
		else
			this.maxPage = this.maxRowCount/this.voteRowsPerPage + 1;
		return maxPage;
	}
	
	public int countComMaxPage(){
		if(this.maxRowCount % this.voteRowsPerPage ==0 )
			this.maxPage = this.maxRowCount/this.comRowsPerPage;
		else
			this.maxPage = this.maxRowCount/this.comRowsPerPage + 1;
		return maxPage;
	}
	
	public void setCurPage(int curPage){
		this.curPage = curPage;
	}
	
	public void setMaxRowCount(int maxRowCount){
		this.maxRowCount = maxRowCount;
	}
	
	public int getMaxPage(){
		return this.maxPage;
	}

	

	
	
	

}
