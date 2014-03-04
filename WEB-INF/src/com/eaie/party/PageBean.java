package com.eaie.party;

import java.util.List;

public class PageBean {
	
	public int curPage;
	public int maxPage;
	public int maxRowCount;
	public final int rowsPerPage=15;
	
	public int countMaxPage(){
		if(this.maxRowCount % this.rowsPerPage ==0 )
			this.maxPage = this.maxRowCount/this.rowsPerPage;
		else
			this.maxPage = this.maxRowCount/this.rowsPerPage + 1;
		return maxPage;
	}
	
	public void setCurPage(int curPage){
		this.curPage = curPage;
	}
	
	public void setMaxRowCount(int maxRowCount){
		this.maxRowCount = maxRowCount;
	}
	

}
