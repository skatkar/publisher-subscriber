/**
 * 
 */
package csuf.project.ds.subscriber.mail;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import csuf.project.ds.vo.EmailVo;

/**
 * @author SWAPNIL
 *
 */
@Service
public class SendEmail {
	
	@Value("${gmail.userName}")
	String userName;
	
	@Value("${gmail.password}")
	String password;
	
	@Value("${email.userId}")
	String fromAddress;
	
	public void send(EmailVo emailVo) {
		
		System.out.println("Starting email sending flow.....");
		
				
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");

		Session session = Session.getDefaultInstance(props,
			new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(userName,password);
				}
			});

		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(fromAddress));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(emailVo.getEmail()));
			message.setSubject("Thank you for the registration! Keep in touch");
			
			StringBuilder messageText = new StringBuilder();
			messageText.append(emailVo.getFirstName() + " " + emailVo.getLastName()+"\n")
			.append(emailVo.getAddress() +"\n")
			.append(emailVo.getCity() + " " + emailVo.getState() + "-" + emailVo.getZipcode() + "\n")
			.append(emailVo.getEmail() + "\n\n")
			.append("Hi " + emailVo.getFirstName() + ",\n")
			.append("Thank you for registering with us!  Please review your name, address, and email mentioned above and send any corrections to support@xyz.com or phone XXX-XXX-XXXX." + "\n\n\n")
			.append("If you have any questions, please contact our manager at manager@xyz.com." + "\n\n\n")
			.append("Thank you");
			
			message.setText(messageText.toString());

			Transport.send(message);

			System.out.println("Done");

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
		
	}

}
