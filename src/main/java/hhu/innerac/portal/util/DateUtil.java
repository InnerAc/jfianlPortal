package hhu.innerac.portal.util;

import java.util.Calendar;

public class DateUtil {
	public static long getNowTime(){
		return Calendar.getInstance().getTimeInMillis();
	}
}
