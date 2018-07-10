package utility;
import java.util.Random;
public class GenOtp {
 public static char[] genOtp() {
	 String number="1234567890";
	 Random r=new Random();
	 char[] otp=new char[6];
	 for(int i=0;i<6;i++) {
		 otp[i]=number.charAt(r.nextInt(number.length()));
	 }
	 return otp;
 }
}
