package hhu.innerac.portal.util;

import java.util.Calendar;
import java.util.Random;

public class DateUtil {
	static final char[] hexDigits = new char[]{'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'a', 'b', 'c', 'd', 'e', 'f'};
    static final Random rand = new Random();
	public static long getNowTime(){
		return Calendar.getInstance().getTimeInMillis();
	}
	public static String randomString(int length) {
        StringBuffer sb = new StringBuffer();
        for (int loop = 0; loop < length; ++loop) {
            sb.append(hexDigits[rand.nextInt(hexDigits.length)]);
        }
        return sb.toString();
    }
	public static String randomName(int length){
		return randomString(length)+getNowTime();
	}
}
