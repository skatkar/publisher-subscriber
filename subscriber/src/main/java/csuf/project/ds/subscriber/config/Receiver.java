/**
 * 
 */
package csuf.project.ds.subscriber.config;

import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.beans.factory.annotation.Autowired;

import csuf.project.ds.subscriber.dao.AlertsDao;
import csuf.project.ds.subscriber.dao.FeedbackDao;
import csuf.project.ds.subscriber.dao.RegisterDao;
import csuf.project.ds.subscriber.mail.SendEmail;
import csuf.project.ds.vo.AlertsVo;
import csuf.project.ds.vo.EmailVo;
import csuf.project.ds.vo.FeedBackVo;

/**
 * @author SWAPNIL
 *
 */
public class Receiver {
	
		
	@Autowired
	SendEmail sendEmail;
	
	/*@Autowired
	Writer writer;*/
	
	@Autowired
	FeedbackDao feedbackDao;
	
	@Autowired
	AlertsDao alertsDao;
	
	@Autowired
	RegisterDao registerDao;
	
	@RabbitListener(queues = "#{autoDeleteQueueEmail.name}")
	public void receiveEmail(EmailVo emailVo) throws InterruptedException {
		System.out.println("***********Receive method for Email*************");
		System.out.println("**** Received from the FIRST queue : " + emailVo);
		
		registerDao.saveRegistrationInDatabase(emailVo);
		sendEmail.send(emailVo);
		
	}
	
	@RabbitListener(queues = "#{autoDeleteQueueFeedback.name}")
	public void receiveFeedback(FeedBackVo feedbackVo) throws InterruptedException {
		System.out.println("***********Receive method for Feedback*************");
		System.out.println("**** Received from the SECOND queue : " + feedbackVo);
		feedbackDao.saveFeedbackInDatabase(feedbackVo);
	}
	
	@RabbitListener(queues = "#{autoDeleteQueueSportsNews.name}")
	public void receiveSportsAndNews(AlertsVo alertsVo) throws InterruptedException {
		System.out.println("***********Receive method for Sports and News *************");
		alertsVo.setSubscriberName("First Subscriber");
		System.out.println("**** Received from the THIRD queue : " + alertsVo);
		alertsDao.saveAlertsInDatabase(alertsVo);
	}
	
	@RabbitListener(queues = "#{autoDeleteQueueNews.name}")
	public void receiveNews(AlertsVo alertsVo) throws InterruptedException {
		System.out.println("***********Receive method for News *************");
		alertsVo.setSubscriberName("Second Subscriber");
		System.out.println("**** Received from the FOURTH queue : " + alertsVo);
		alertsDao.saveAlertsInDatabase(alertsVo);
	}
	
	@RabbitListener(queues = "#{durableQueueWeather.name}")
	public void receiveWeather(AlertsVo alertsVo) throws InterruptedException {
		System.out.println("***********Receive method for Weather *************");
		alertsVo.setSubscriberName("Third Subscriber");
		System.out.println("**** Received from the FIFTH queue : " + alertsVo);
		alertsDao.saveAlertsInDatabase(alertsVo);
	}

}
