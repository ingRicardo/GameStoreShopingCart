/**
 * 
 */
package com.example.uabc.util;

/**
 * @author ricardo
 *
 */
public class FunctionsUtil {

	public static boolean isNumeric(String strNum) {
	    if (strNum == null) {
	        return false;
	    }
	    try {
	        double d = Double.parseDouble(strNum);
	    } catch (NumberFormatException nfe) {
	        return false;
	    }
	    return true;
	}
	
}
