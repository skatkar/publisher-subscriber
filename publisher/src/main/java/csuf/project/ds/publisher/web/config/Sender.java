/**
 * 
 */
package csuf.project.ds.publisher.web.config;

import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.TimeZone;

import org.springframework.amqp.core.DirectExchange;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import csuf.project.ds.vo.AlertsVo;
import csuf.project.ds.vo.EmailVo;
import csuf.project.ds.vo.FeedBackVo;

/**
 * @author SWAPNIL
 *
 */
public class Sender {
	
	@Autowired
	private RabbitTemplate template;

	@Autowired
	private DirectExchange direct;
	
	public void send(String key,String message) {
		System.out.println("Sending the message ------");
		template.convertAndSend(direct.getName(), key, message);
		System.out.println(" [x] Sent '" + message + "'");
	}
	
	public void send(String key,EmailVo emailVo) {
		System.out.println("Sending the Register object ------");
		
		emailVo.setRegistrationDate(getCurrentDateAndTime());
		
		template.convertAndSend(direct.getName(), key, emailVo);
		System.out.println(" [x] Sent '" + emailVo + "'");
	}
	
	public void send(String key,FeedBackVo feedBackVo) {
		System.out.println("Sending the Feedback object ------");
		
		feedBackVo.setFeedbackDate(getCurrentDateAndTime());
		
		template.convertAndSend(direct.getName(), key, feedBackVo);
		System.out.println(" [x] Sent '" + feedBackVo + "'");
	}

	public void send(String key, AlertsVo alertsVo) {
		System.out.println("Sending the Alerts object ------");
		
		alertsVo.setAlertDate(getCurrentDateAndTime());
		
		template.convertAndSend(direct.getName(), key, alertsVo);
		System.out.println(" [x] Sent '" + alertsVo + "'");
	}
	
	private String getCurrentDateAndTime() {
		
		DateFormat pacificTimeDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		pacificTimeDateFormat.setTimeZone(TimeZone.getTimeZone("America/Los_Angeles"));
		
		Date date = new Date(Calendar.getInstance().getTimeInMillis());
		
		return pacificTimeDateFormat.format(date);
	}

}
