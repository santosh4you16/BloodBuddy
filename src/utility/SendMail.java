package utility;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;
 
 
public class SendMail 
{
 
   public static void send(String smail,String rmail,String phn ) 
   {    
	   String senderMail=smail;
	   String recievermail=rmail;
	   String phno=phn;
      
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
 
         message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recievermail));
 
         message.setSubject("BloodBuddy:Your request is Accepted. ");
 
         message.setText("please find the phone number\nPhone no - "+phno+"\nEmail - "+smail);
         Transport.send(message);
         System.out.println("Mail successfully sent");
      }
      catch (MessagingException mex) 
      {
         mex.printStackTrace();
      }
   }
}