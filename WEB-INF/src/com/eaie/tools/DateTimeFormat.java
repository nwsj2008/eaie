package com.eaie.tools;

import java.util.*;
import java.text.*;

public class DateTimeFormat {
	
	public static String getDateString(Date date){	
		return new SimpleDateFormat("yyyy-MM-dd").format(date);		
	}
	public static String getDateTimeString(Date date){		
		return new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(date);
	}
	
	public static String getFloatString(double num){
		if (num >= 10)
		    return new DecimalFormat("##.#").format(num);
		else if (num < 10)
			return new DecimalFormat("#.#").format(num);
		else return new DecimalFormat("###").format(num);
	}
	
	public static String getRunTime(double num){
		return new DecimalFormat("#.###").format(num);
		
	}

}
