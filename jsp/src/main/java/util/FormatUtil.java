package util;

import java.text.DecimalFormat;

public class FormatUtil { // EL에서 static이 아닌 메소드는 사용할 수 없다.
	public static String number(long number,String pattern) {
		DecimalFormat df = new DecimalFormat(pattern);
		return df.format(number);
	}
}
