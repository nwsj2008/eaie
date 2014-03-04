package com.eaie.admin.vote;

import java.util.List;

import com.eaie.common.Page;
import com.eaie.common.PageBean;

public class VotePage {
	
Page page = new Page();
	
	public List getList(int curPage){	
		String hql = "from Votepaper as vote order by vote.pubtime desc";
		String hqlCount = "select count(*) from Votepaper";
		try{
			page.setMaxPageNum(hqlCount,"Votepaper");
		    List list = page.getAllByVote(curPage, hql);
		    return list;
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}
	}
	
	public int getMaxPage(){
		return page.getMaxPage();
	}
	
	public int getRowsNum(){
		return page.getRowsNum();
	}
	
	public int getRowsPerPage(){
		PageBean pageBean = new PageBean();
		return pageBean.voteRowsPerPage;
	}

}
