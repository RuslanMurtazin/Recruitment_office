package mail;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendEmailUsingGMailSMTP {
   public void Sender(String recipient,String recruitname,String arms) {
      // Recipient's email ID needs to be mentioned.
      String to = recipient;//change accordingly

      // Sender's email ID needs to be mentioned
      String from = "ruslanasuspad@gmail.com";//change accordingly
      final String username = "login";//change accordingly
      final String password = "pass";//change accordingly

      // Assuming you are sending email through relay.jangosmtp.net
      String host = "smtp.gmail.com";

      Properties props = new Properties();
      props.put("mail.smtp.auth", "true");
      props.put("mail.smtp.starttls.enable", "true");
      props.put("mail.smtp.host", host);
      props.put("mail.smtp.port", "587");

      // Get the Session object.
      Session session = Session.getInstance(props,
      new javax.mail.Authenticator() {
         protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(username, password);
         }
      });

      try {
//        
    	// Create a default MimeMessage object.
          Message message = new MimeMessage(session);

 	   // Set From: header field of the header.
	   message.setFrom(new InternetAddress(from));

	   // Set To: header field of the header.
	   message.setRecipients(Message.RecipientType.TO,
            InternetAddress.parse(to));

	   // Set Subject: header field
	   message.setSubject("Army");

	   // Send the actual HTML message, as big as you like
	   message.setContent(recruitname + "<h1> You are in the army now: </h1>"+arms,
	             "text/html");

	   // Send message
	   Transport.send(message);

	   System.out.println("Sent message successfully....");

      } catch (MessagingException e) {
            throw new RuntimeException(e);
      }
   }
}