package com.eaie.party;

import java.util.Vector;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;

import com.eaie.party.PartyImp;


public class PartyThread extends HttpServlet implements Runnable {

	private Vector party;
	ServletContext context;
	
	public void setContext(ServletContext c){
		this.context = c;
	}

	public void run(){
		try{
			do{
				boolean isInit = getPartyInit();
				if(isInit)
					System.out.println("ϵͳ��ʼ���������ݳɹ�!");
				else
					System.out.println("ϵͳ��ʼ����������ʧ��!");
				Thread.sleep(60 * 60 * 1000); 
			}while(true);
		}catch(Exception e){
			e.printStackTrace();
		}	
	}
	
	private boolean getPartyInit(){
		try{
			party = PartyImp.getParty();
            context.setAttribute("party", party);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

}
