package utility;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;
 
 
public class FeedbackMail 
{
 
   public static boolean send(String msg,String name) 
   {    
	   
      
      Properties properties = System.getProperties();
 
      // Setting up mail server
     
      properties.put("mail.smtp.host", "smtp.gmail.com");
      properties.put("mail.smtp.starttls.enable", "true");
  //    properties.put("mail.smtp.socketFactory.port", "587");
    //  properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
      properties.put("mail.smtp.auth", "true");
      
      properties.put("mail.smtp.port", "587");
      //properties.put("mail.smtp.auth", "true");
      // creating session object to get properties
      Session session = Session.getInstance(properties, new Authenticator() {
    	  protected PasswordAuthentication getPasswordAuthentication() {
    		  return new PasswordAuthentication("cse15316.sbit","Iamsantosh16");
    	  }
      });
 
      try
      {
      
         MimeMessage message = new MimeMessage(session);
 
         message.setFrom(new InternetAddress("cse15316.sbit@gmail.com"));
 
         message.setRecipients(Message.RecipientType.TO, InternetAddress.parse("sk.santosh99111@gmail.com"));
 
         message.setSubject("Feedback from: "+name);
 
         message.setText(msg);
         Transport.send(message);
         System.out.println("Mail successfully sent");
      }
      catch (MessagingException mex) 
      {
         mex.printStackTrace();
         return false;
      }
      
      return true;
   }
}